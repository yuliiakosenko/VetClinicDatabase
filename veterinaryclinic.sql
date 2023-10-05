-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2023 at 03:26 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `veterinaryclinic`
--

-- --------------------------------------------------------

--
-- Table structure for table `animalowners`
--

CREATE TABLE `animalowners` (
  `Owner_id` int(11) NOT NULL,
  `Owner_name` varchar(100) DEFAULT NULL,
  `Owner_email` varchar(100) DEFAULT NULL,
  `Owner_phone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `animalowners`
--

INSERT INTO `animalowners` (`Owner_id`, `Owner_name`, `Owner_email`, `Owner_phone`) VALUES
(1, 'Nick Williams', 'n.williams98@gmail.com', 833134415),
(2, 'Olesia Naumenko', 'olesia.naumenko@gmail.com', 834756755),
(3, 'Carol Nordman', 'carolnordman45@gmail.com', 833334455),
(4, 'Audrey O`Halloran', 'audrey.oh@gmail.com', 833134495),
(5, 'John Potter', 'john.potter@gmail.com', 831134691),
(6, 'Tommas Brown', 'tom_crazybear@gmail.com', 833134422),
(7, 'Amina Rodriguez', 'Rodriguez.A@gmail.com', 833034022),
(8, 'Blair Lopez', 'blair.lopez2002@gmail.com', 833034000),
(9, 'Serena Van Der Woodsen', 'SerenaVDWoodsen@gmail.com', 833030000),
(10, 'Daniel Randolph Humphrey', 'DanielHumphrey@gmail.com', 833034321);

-- --------------------------------------------------------

--
-- Table structure for table `animals`
--

CREATE TABLE `animals` (
  `Animal_id` int(11) NOT NULL,
  `Animal_type` varchar(100) DEFAULT NULL,
  `Animal_breed` varchar(100) DEFAULT NULL,
  `Animal_name` varchar(100) DEFAULT NULL,
  `Animal_age` int(11) DEFAULT NULL,
  `Owner_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `animals`
--

INSERT INTO `animals` (`Animal_id`, `Animal_type`, `Animal_breed`, `Animal_name`, `Animal_age`, `Owner_id`) VALUES
(1000, 'dog', 'Dobermann', 'Tor', 6, 10),
(1001, 'dog', 'Dobermann', 'Alpha', 4, 10),
(1002, 'dog', 'Dobermann', 'Ennis', 1, 10),
(1003, 'dog', 'Maltipoo', 'Glory', 6, 1),
(1008, 'sheep', 'Cheviot Sheep', 'Flaffy', 2, 6),
(1091, 'Donkey', 'Irish donkey', 'Donny', 5, 7),
(1111, 'Donkey', 'Irish donkey', 'Lilly', 4, 7),
(1120, 'Horse', 'Thoroughbred Horse', 'Spirit', 7, 8),
(1121, 'Donkey', 'Irish donkey', 'Hope', 2, 7),
(1221, 'Horse', 'Thoroughbred Horse', 'Dakota', 4, 8),
(1223, 'dog', 'American Bulldog', 'Jackson', 4, 5),
(1870, 'cat', 'Sphynx cat', 'Archibald', 7, 6),
(1875, 'cat', 'Sphynx cat', 'Amanda', 8, 6),
(1953, 'dog', 'Maltipoo', 'Nency', 4, 4),
(1977, 'sheep', 'Cheviot Sheep', 'Nick', 2, 6),
(1978, 'sheep', 'Cheviot Sheep', 'Only', 2, 6),
(1995, 'cat', 'Maine Coon', 'King', 10, 9),
(2005, 'cat', 'Ragdoll', 'Barbie', 4, 10),
(2022, 'sheep', 'Cheviot Sheep', 'Hope', 2, 6),
(2251, 'Donkey', 'Asino Pantesco', 'Nice', 7, 6),
(2787, 'dog', 'Pomeranian Spitz', 'Kenzo', 4, 2),
(2978, 'sheep', 'Cheviot Sheep', 'Love', 2, 6),
(2995, 'cat', 'Maine Coon', 'Rosie', 3, 9),
(3003, 'pony', 'Shetland', 'Phoebe', 2, 3),
(3013, 'pony', 'Shetland', 'Alex', 2, 3),
(3021, 'Horse', 'Dutch Warmblood Horse', 'Teddy', 5, 9),
(3102, 'cow', 'Belgian Blue', 'Milky Shine', 2, 1),
(3103, 'cow', 'Belgian Blue', 'Roman', 3, 1),
(3113, 'cow', 'Limousin', 'Reddy', 3, 1),
(3114, 'cow', 'Limousin', 'Sunny', 3, 1),
(3119, 'cow', 'Limousin', 'Lilly', 5, 1),
(3121, 'Horse', 'Selle Francais Horse', 'Napoleon', 2, 9),
(3123, 'cow', 'Belgian Blue', 'Zirka', 6, 1),
(3201, 'Horse', 'Dutch Warmblood Horse', 'Chief', 5, 9),
(3220, 'Horse', 'Dutch Warmblood Horse', 'Cisco', 3, 9),
(3221, 'Horse', 'Dutch Warmblood Horse', 'Sunshine', 5, 8),
(3223, 'cow', 'Limousin', 'Audi', 3, 1),
(3883, 'cow', 'Hereford', 'Star', 2, 1),
(4903, 'dog', 'Pomeranian Spitz', 'Grace', 4, 3),
(5001, 'Donkey', 'Irish donkey', 'Freedom', 4, 7),
(5021, 'Donkey', 'Irish donkey', 'Destiny', 4, 7),
(5551, 'sheep', 'Cheviot Sheep', 'Beauty', 1, 6),
(7221, 'Horse', 'Dutch Warmblood Horse', 'Sugar', 5, 8);

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `Appointment_id` int(11) NOT NULL,
  `Appointment_type` varchar(100) DEFAULT NULL,
  `Appointment_time` datetime DEFAULT NULL,
  `Animal_id` int(11) DEFAULT NULL,
  `Symptom_id` int(11) DEFAULT NULL,
  `Staff_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`Appointment_id`, `Appointment_type`, `Appointment_time`, `Animal_id`, `Symptom_id`, `Staff_id`) VALUES
(1010, 'online', '2022-02-11 12:00:00', 1000, 1, 71),
(1011, 'online', '2022-02-11 14:00:00', 1001, 1, 71),
(1012, 'online', '2023-03-21 16:00:00', 1002, 1, 71),
(1013, 'online', '2020-03-01 16:00:00', 1002, 2, 71),
(1014, 'phone call', '2021-06-21 14:00:00', 1002, 3, 71),
(1015, 'drop in', '2023-01-22 16:00:00', 1002, 4, 71),
(1016, 'online', '2020-09-11 11:30:00', 1002, 5, 71),
(1017, 'phone call', '2023-05-01 16:00:00', 1002, 6, 71),
(1018, 'online', '2019-05-24 13:30:00', 1002, 7, 71),
(1019, 'online', '2022-06-21 16:00:00', 1002, 8, 71),
(1022, 'phone call', '2020-09-21 13:30:00', 1002, 9, 71),
(1032, 'online', '2020-10-21 16:00:00', 1002, 10, 71),
(1042, 'online', '2023-03-21 14:00:00', 1002, 10, 71),
(1052, 'drop in', '2022-03-22 18:00:00', 1002, 1, 71),
(1053, 'online', '2021-03-01 16:00:00', 1008, 2, 71),
(1054, 'phone call', '2022-06-21 14:00:00', 1008, 3, 71),
(1055, 'drop in', '2022-01-22 16:00:00', 1008, 4, 71),
(1056, 'online', '2021-09-11 10:30:00', 1008, 5, 71),
(1057, 'phone call', '2023-07-01 16:00:00', 1008, 6, 71),
(1058, 'online', '2010-07-24 12:30:00', 1008, 7, 71),
(1059, 'online', '2022-06-21 19:00:00', 1008, 8, 71),
(1060, 'phone call', '2021-09-21 13:00:00', 1008, 9, 71),
(1061, 'online', '2021-10-21 16:00:00', 1008, 10, 71),
(1064, 'online', '2018-03-07 12:00:00', 1091, 2, 7543),
(1070, 'drop in', '2022-03-22 11:00:00', 1091, 5, 1),
(1071, 'drop in', '2022-06-22 12:00:00', 1091, 5, 1),
(1072, 'drop in', '2023-05-12 11:00:00', 1091, 5, 1),
(1074, 'drop in', '2022-03-22 12:00:00', 1111, 1, 1),
(1075, 'drop in', '2023-05-12 13:00:00', 1120, 2, 1),
(1076, 'drop in', '2022-06-22 14:00:00', 1121, 3, 1),
(1077, 'drop in', '2023-05-12 15:00:00', 1223, 4, 1),
(1078, 'drop in', '2021-03-22 11:00:00', 1111, 5, 1),
(1079, 'drop in', '2021-03-01 11:00:00', 1870, 5, 71),
(1080, 'drop in', '2022-03-02 12:00:00', 1875, 1, 71),
(1081, 'drop in', '2023-05-03 13:00:00', 1953, 2, 71),
(1082, 'drop in', '2022-06-04 14:00:00', 1977, 3, 71),
(1083, 'drop in', '2023-05-05 15:00:00', 1978, 4, 71),
(1084, 'drop in', '2021-03-06 11:00:00', 1995, 5, 71),
(1085, 'drop in', '2022-03-07 12:00:00', 2005, 10, 71),
(1086, 'drop in', '2023-05-08 13:00:00', 2022, 20, 71),
(1087, 'drop in', '2022-06-09 14:00:00', 2251, 3, 71),
(1088, 'drop in', '2023-05-10 15:00:00', 2787, 4, 71),
(1089, 'drop in', '2018-03-07 13:00:00', 2787, 5, 7543),
(1090, 'drop in', '2020-03-02 12:00:00', 2978, 1, 7543),
(1091, 'drop in', '2020-05-03 13:00:00', 2995, 2, 7543),
(1092, 'drop in', '2020-06-04 14:00:00', 3003, 3, 7543),
(1093, 'drop in', '2020-05-05 15:00:00', 3013, 4, 7543),
(1094, 'drop in', '2020-03-06 11:00:00', 1995, 5, 7543),
(1095, 'drop in', '2020-03-07 12:00:00', 2005, 10, 7543),
(1096, 'drop in', '2020-05-08 13:00:00', 2022, 20, 7543),
(1097, 'drop in', '2020-06-09 14:00:00', 2251, 3, 7543),
(1098, 'drop in', '2020-05-10 15:00:00', 2787, 4, 7543),
(1113, 'online', '2020-03-01 17:00:00', 1008, 2, 71),
(1116, 'online', '2020-09-11 10:30:00', 1008, 5, 71),
(1118, 'online', '2019-05-24 15:30:00', 1008, 7, 71),
(1122, 'phone call', '2020-09-21 15:30:00', 1008, 9, 71),
(2001, 'drop in', '2021-01-01 11:00:00', 1870, 5, 7543),
(2002, 'drop in', '2021-01-02 12:00:00', 1875, 1, 7543),
(2003, 'drop in', '2021-02-03 13:00:00', 1953, 2, 7543),
(2004, 'drop in', '2021-03-04 14:00:00', 1977, 3, 7543),
(2005, 'drop in', '2021-04-05 15:00:00', 1978, 4, 7543),
(2006, 'drop in', '2021-05-06 11:00:00', 1995, 5, 7543),
(2007, 'drop in', '2021-06-07 12:00:00', 2005, 10, 7543),
(2008, 'drop in', '2021-07-08 13:00:00', 2022, 20, 7543),
(2009, 'drop in', '2021-08-09 14:00:00', 2251, 3, 7543),
(2010, 'drop in', '2021-09-10 15:00:00', 2787, 4, 7543),
(2014, 'phone call', '2021-06-21 12:00:00', 1008, 3, 7543),
(2016, 'online', '2020-09-11 12:30:00', 1008, 5, 7543),
(2017, 'phone call', '2023-05-01 16:00:00', 1008, 6, 7543),
(2018, 'online', '2019-05-24 12:30:00', 1008, 7, 7543),
(2022, 'phone call', '2020-09-21 13:00:00', 1008, 9, 7543),
(2042, 'online', '2023-03-21 14:00:00', 1008, 10, 7543),
(2070, 'online', '2020-03-01 11:00:00', 1008, 2, 7543),
(3000, 'online', '2023-02-11 12:00:00', 1091, 1, 1),
(3001, 'online', '2022-03-11 12:00:00', 1111, 10, 1),
(3002, 'online', '2023-06-23 12:00:00', 1111, 9, 1),
(3003, 'online', '2022-09-11 12:00:00', 1111, 5, 1),
(3004, 'online', '2023-02-12 12:00:00', 1111, 8, 1),
(3005, 'online', '2023-03-11 12:00:00', 1111, 1, 1),
(3006, 'online', '2023-05-01 12:00:00', 1111, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `diagnoses`
--

CREATE TABLE `diagnoses` (
  `Diagnosis_id` int(11) NOT NULL,
  `Appointment_id` int(11) DEFAULT NULL,
  `Diagnosis_description` varchar(500) DEFAULT NULL,
  `Medication_description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `diagnoses`
--

INSERT INTO `diagnoses` (`Diagnosis_id`, `Appointment_id`, `Diagnosis_description`, `Medication_description`) VALUES
(1, 1010, 'Respiratory infection', 'Antibiotics'),
(2, 1011, 'Respiratory infection', 'Antibiotics'),
(3, 1012, 'Respiratory infection', 'Antibiotics'),
(4, 1013, 'Allergies', 'Diet'),
(5, 1014, 'Gastrointestinal infections', 'Diet'),
(6, 1015, 'Respiratory infection', 'Antibiotics'),
(7, 1016, 'Allergies', 'Diet'),
(8, 1017, 'Gastrointestinal infections', 'Fluid therapy'),
(9, 1018, 'Respiratory infection', 'Antibiotics'),
(10, 1019, 'Allergies', 'Diet'),
(11, 1022, 'Gastrointestinal infections', 'Fluid therapy'),
(12, 1032, 'Respiratory infection', 'Antibiotics'),
(13, 1042, 'Allergies', 'Diet'),
(14, 1052, 'Gastrointestinal infections', 'Fluid therapy'),
(15, 1053, 'Respiratory infection', 'Antibiotics'),
(16, 1054, 'Allergies', 'Diet'),
(17, 1055, 'Gastrointestinal infections', 'Fluid therapy');

-- --------------------------------------------------------

--
-- Table structure for table `installmentpayments`
--

CREATE TABLE `installmentpayments` (
  `InstallmentPayment_id` int(11) NOT NULL,
  `Payment_id` int(11) DEFAULT NULL,
  `Installment_number` int(11) DEFAULT NULL,
  `Installment_amount` int(11) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `installmentpayments`
--

INSERT INTO `installmentpayments` (`InstallmentPayment_id`, `Payment_id`, `Installment_number`, `Installment_amount`, `status`) VALUES
(10, 100, 1, 500, 'Done'),
(11, 102, 1, 100, 'Done'),
(12, 102, 2, 100, 'Done'),
(13, 102, 3, 100, 'Done'),
(14, 103, 1, 100, 'Done'),
(15, 103, 2, 500, 'Pending'),
(16, 105, 1, 100, 'Done');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `Payment_id` int(11) NOT NULL,
  `Billing_date` datetime DEFAULT NULL,
  `Billing_amount` int(11) DEFAULT NULL,
  `Installment_amount` int(11) DEFAULT NULL,
  `Payment_method` varchar(100) DEFAULT NULL,
  `Appointment_id` int(11) DEFAULT NULL,
  `Payment_status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`Payment_id`, `Billing_date`, `Billing_amount`, `Installment_amount`, `Payment_method`, `Appointment_id`, `Payment_status`) VALUES
(100, '2023-04-01 15:00:00', 1000, 500, 'Revolut', 1010, 'Done'),
(101, '2023-04-18 14:30:00', 500, 0, 'Revolut', 1011, 'Done'),
(102, '2023-03-21 16:00:00', 500, 300, 'Apple Pay', 1012, 'Done'),
(103, '2022-03-21 16:00:00', 1000, 600, 'MasterCard', 1013, 'In progress'),
(104, '2022-05-05 11:00:00', 100, 0, 'Cash', 1014, 'Done'),
(105, '2022-06-15 11:00:00', 1000, 100, 'Cash', 1015, 'Done'),
(106, '2022-07-05 11:00:00', 100, 0, 'Apple pay', 1016, 'Done'),
(107, '2022-08-05 11:00:00', 750, 0, 'MasterCard', 1017, 'Done'),
(108, '2022-09-05 11:00:00', 420, 0, 'Cash', 1018, 'Done'),
(109, '2022-10-05 11:00:00', 370, 0, 'Apple pay', 1019, 'Done'),
(110, '2022-11-05 11:00:00', 480, 0, 'MasterCard', 1022, 'Done'),
(111, '2022-12-05 11:00:00', 900, 0, 'Cash', 1032, 'Done'),
(112, '2023-01-05 11:00:00', 1004, 0, 'Apple pay', 1042, 'Done'),
(113, '2023-02-05 11:00:00', 540, 0, 'MasterCard', 1052, 'Done'),
(114, '2023-04-05 11:00:00', 300, 0, 'Cash', 1053, 'Done'),
(115, '2023-05-05 11:00:00', 100, 0, 'Apple pay', 1054, 'Done'),
(116, '2023-06-05 11:00:00', 100, 0, 'Cash', 1055, 'Done'),
(117, NULL, 200, NULL, 'Cash', 1056, 'In progress'),
(118, '2023-07-06 10:00:00', 200, 100, 'Cash', 1058, 'In progress'),
(119, '2023-07-05 17:00:00', 300, 0, 'Cash', 1059, 'Done'),
(120, '2023-07-03 15:00:00', 400, 0, 'Cash', 1060, 'Done');

-- --------------------------------------------------------

--
-- Stand-in structure for view `sheeps`
-- (See below for the actual view)
--
CREATE TABLE `sheeps` (
`Animal_id` int(11)
,`Animal_type` varchar(100)
,`Animal_breed` varchar(100)
,`Animal_name` varchar(100)
,`Animal_age` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `Staff_id` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Position` varchar(100) DEFAULT NULL,
  `Phone` int(11) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`Staff_id`, `Name`, `Position`, `Phone`, `Email`) VALUES
(1, 'Joe O’Donnell', 'chief veterinarian', 834534676, NULL),
(21, 'Mike Anderson', 'nurse', 836275660, NULL),
(71, 'Daniel O’Connor', 'veterinarian', 837775641, NULL),
(100, 'Ivanka McKelly', 'nurse', 836711133, NULL),
(763, 'Roisin Smith', 'receptionist', 834190168, NULL),
(7543, 'Amanda Kondratiuk', 'veterinarian', 833584687, NULL),
(8085, 'Grace Murphy', 'nurse', 836271110, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `symptoms`
--

CREATE TABLE `symptoms` (
  `Symptom_id` int(11) NOT NULL,
  `Symptom_description` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `symptoms`
--

INSERT INTO `symptoms` (`Symptom_id`, `Symptom_description`) VALUES
(1, 'Coughing'),
(2, 'Sneezing'),
(3, 'Vomiting'),
(4, 'Diarrhea'),
(5, 'Lethargy'),
(6, 'Loss of Appetite'),
(7, 'Itching and scratching'),
(8, 'Swelling'),
(9, 'Excessive thirst'),
(10, 'Excessive panting'),
(11, 'Seizures'),
(12, 'Disorientation'),
(13, 'Aggression'),
(14, 'Increased urination'),
(15, 'Yellowing of skin or eyes'),
(16, 'Limping or difficulty walking'),
(17, 'Excessive shedding'),
(18, 'Discolored urine or stool'),
(19, 'Rapid breathing'),
(20, 'Excessive drooling');

-- --------------------------------------------------------

--
-- Structure for view `sheeps`
--
DROP TABLE IF EXISTS `sheeps`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sheeps`  AS SELECT `animals`.`Animal_id` AS `Animal_id`, `animals`.`Animal_type` AS `Animal_type`, `animals`.`Animal_breed` AS `Animal_breed`, `animals`.`Animal_name` AS `Animal_name`, `animals`.`Animal_age` AS `Animal_age` FROM `animals` WHERE `animals`.`Animal_type` = 'Sheep''Sheep'  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `animalowners`
--
ALTER TABLE `animalowners`
  ADD PRIMARY KEY (`Owner_id`);

--
-- Indexes for table `animals`
--
ALTER TABLE `animals`
  ADD PRIMARY KEY (`Animal_id`),
  ADD KEY `Owner_id` (`Owner_id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`Appointment_id`),
  ADD UNIQUE KEY `idx_appointments_time_staff` (`Appointment_time`,`Staff_id`),
  ADD KEY `Symptom_id` (`Symptom_id`),
  ADD KEY `Animal_id` (`Animal_id`),
  ADD KEY `Staff_id` (`Staff_id`);

--
-- Indexes for table `diagnoses`
--
ALTER TABLE `diagnoses`
  ADD PRIMARY KEY (`Diagnosis_id`),
  ADD KEY `Appointment_id` (`Appointment_id`);

--
-- Indexes for table `installmentpayments`
--
ALTER TABLE `installmentpayments`
  ADD PRIMARY KEY (`InstallmentPayment_id`),
  ADD KEY `Payment_id` (`Payment_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`Payment_id`),
  ADD KEY `Appointment_id` (`Appointment_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`Staff_id`);

--
-- Indexes for table `symptoms`
--
ALTER TABLE `symptoms`
  ADD PRIMARY KEY (`Symptom_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `animals`
--
ALTER TABLE `animals`
  ADD CONSTRAINT `animals_ibfk_1` FOREIGN KEY (`Owner_id`) REFERENCES `animalowners` (`Owner_id`);

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`Symptom_id`) REFERENCES `symptoms` (`Symptom_id`),
  ADD CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`Animal_id`) REFERENCES `animals` (`Animal_id`),
  ADD CONSTRAINT `appointments_ibfk_3` FOREIGN KEY (`Staff_id`) REFERENCES `staff` (`Staff_id`);

--
-- Constraints for table `diagnoses`
--
ALTER TABLE `diagnoses`
  ADD CONSTRAINT `diagnoses_ibfk_1` FOREIGN KEY (`Appointment_id`) REFERENCES `appointments` (`Appointment_id`);

--
-- Constraints for table `installmentpayments`
--
ALTER TABLE `installmentpayments`
  ADD CONSTRAINT `installmentpayments_ibfk_1` FOREIGN KEY (`Payment_id`) REFERENCES `payments` (`Payment_id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`Appointment_id`) REFERENCES `appointments` (`Appointment_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
