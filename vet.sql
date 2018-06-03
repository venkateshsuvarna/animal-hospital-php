-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2017 at 11:28 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wdmassignment4`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `clientid` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` int(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`clientid`, `name`, `address`, `phone`, `email`, `password`) VALUES
(3, 'Venkatesh Suvarna', 'Arlington,Texas', 1234567890, 'venkatesh@gmail.com', '6a8befea4ed3471c7ae3a449be5a0196'),
(4, 'Pramod', 'California, USA', 1345678900, 'pramod@gmail.com', 'cd6d1f758455b2772292a8f7205a7064'),
(5, 'Shreyas', 'Pune, India', 1212121212, 'shreyas@mavs.uta.edu', 'ebd2ce882db65eacef5d00b397c9144f'),
(6, 'Govinda', 'Bandra, Mumbai', 2147483647, 'govinda@superstar.com', 'b9fa03459c5a924ce0fe5e19532fbe5a');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(1000) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `questioncomments` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `questioncomments`) VALUES
('Venkatesh Suvarna', 'venkatesh@gmail.com', 'ABC'),
('Pramod', 'pramod@gmail.com', 'DEFG'),
('Shreyas', 'shreyas@mavs.uta.edu', 'HIGHFNK N JBASFBJ NA'),
('Salman', 'salman@superstar.com', 'TIGER ZINDA HAI'),
('Shah Rukh', 'srkking@superstar.com', 'Jab Harry Met Sejal');

-- --------------------------------------------------------

--
-- Table structure for table `pet`
--

CREATE TABLE `pet` (
  `petid` int(100) NOT NULL,
  `petname` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pet`
--

INSERT INTO `pet` (`petid`, `petname`) VALUES
(1, 'Dog'),
(2, 'Cat'),
(3, 'Parrot'),
(4, 'Rabbit');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `questionid` int(100) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `answer` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`questionid`, `question`, `answer`) VALUES
(1, 'Our dog likes to eat cake is it safe for him to do so?', 'It is not safe for dogs to eat cake, only dog food or boiled chicken is required.'),
(2, 'How many times do you need to your bird to the vet?', 'If you notice that your bird is behaving improperly then it is recommended to take your bird to the vet, else come to the vet according to the checkup schedule given by the vet.'),
(3, 'My cat just got injured and it is not possible to give him medical treatment at home. What should I do?', 'Contact your vet and arrange for medical service appointment.'),
(4, 'Can I keep a tiger as a pet?', 'It is recommended to only keep domesticated animal species such as dogs or cats as pets for safety reasons.');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `serviceid` int(100) NOT NULL,
  `servicename` varchar(1000) NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`serviceid`, `servicename`, `description`) VALUES
(1, 'Medical Services', 'We offer state of the art equipment and technology.'),
(2, 'Surgical Services', 'Full range of surgical procedures including orthopedics and emergency surgeries.'),
(3, 'Dental Care', 'A dental exam can determine whether your pet needs preventive dental care such as scaling and polishing.'),
(4, 'House Calls', 'The elderly,physically challenged, and multiple pet households often find our in-home veterinary service helpful and convenient'),
(5, 'Emergencies', 'At least one of our doctors is on call every day and night.');

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `clientid` int(100) NOT NULL,
  `serviceid` int(100) NOT NULL,
  `petid` int(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`clientid`, `serviceid`, `petid`, `date`) VALUES
(3, 1, 1, '2017-11-20'),
(3, 1, 1, '2017-11-20'),
(4, 3, 3, '2017-11-21'),
(5, 3, 4, '2017-11-21'),
(6, 2, 3, '2017-11-21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`clientid`);

--
-- Indexes for table `pet`
--
ALTER TABLE `pet`
  ADD PRIMARY KEY (`petid`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`questionid`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`serviceid`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD KEY `constraint_clientid` (`clientid`),
  ADD KEY `constraint_serviceid` (`serviceid`),
  ADD KEY `constraint_petid` (`petid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `clientid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pet`
--
ALTER TABLE `pet`
  MODIFY `petid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `questionid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `serviceid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `subscription`
--
ALTER TABLE `subscription`
  ADD CONSTRAINT `constraint_clientid` FOREIGN KEY (`clientid`) REFERENCES `client` (`clientid`),
  ADD CONSTRAINT `constraint_petid` FOREIGN KEY (`petid`) REFERENCES `pet` (`petid`),
  ADD CONSTRAINT `constraint_serviceid` FOREIGN KEY (`serviceid`) REFERENCES `service` (`serviceid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
