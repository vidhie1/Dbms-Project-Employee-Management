create database emp;
use emp;
-- Table: Department
CREATE TABLE Department (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(255) NOT NULL,
    manager_id INT,
    Comp_city VARCHAR(255),
    Comp_State  VARCHAR(255)
   
);
INSERT INTO Department (department_name, manager_id, Comp_city, Comp_State) VALUES
('HR Department', 101, 'Mumbai', 'Maharashtra'),
('IT Department', 102, 'Bangalore', 'Karnataka'),
('Finance Department', 103, 'Delhi', 'Delhi'),
('Marketing Department', 104, 'Kolkata', 'West Bengal'),
('Operations Department', 105, 'Chennai', 'Tamil Nadu'),
('Marketing Department', 104, 'Kolkata', 'West Bengal'),
('Operations Department', 105, 'Chennai', 'Tamil Nadu'),
('Sales Department', 106, 'Hyderabad', 'Telangana'),
('Production Department', 107, 'Pune', 'Maharashtra'),
('Customer Service Department', 108, 'Jaipur', 'Rajasthan'),
('Research & Development Department', 109, 'Ahmedabad', 'Gujarat'),
('Quality Assurance Department', 110, 'Gurgaon', 'Haryana'),
('Supply Chain Department', 111, 'Noida', 'Uttar Pradesh'),
('Legal Department', 112, 'Lucknow', 'Uttar Pradesh'),
('Human Resources Department', 113, 'Indore', 'Madhya Pradesh'),
('Training Department', 114, 'Bhopal', 'Madhya Pradesh'),
('Public Relations Department', 115, 'Patna', 'Bihar'),
('Information Security Department', 116, 'Chandigarh', 'Punjab'),
('Creative Department', 117, 'Mysore', 'Karnataka'),
('Product Management Department', 118, 'Coimbatore', 'Tamil Nadu');


-- Table: Employee
CREATE TABLE Employee (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(15),
    hire_date DATE,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);
INSERT INTO Employee (first_name, last_name, email, phone_number, hire_date, department_id) VALUES
('Keya', 'Shah', 'keya.shah@abc.com', '9876543210', '2023-01-01', 1),
('Aryan', 'Desai', 'aryan.desai@abc.com', '9876543211', '2023-01-15', 2),
('Demira', 'Ramnani', 'demira.ramnani@abc.com', '9876543212', '2023-02-01', 3),
('Anaya', 'Verma', 'anaya.verma@abc.com', '9876543213', '2023-02-15', 4),
('Ishaan', 'Gupta', 'ishaan.gupta@abc.com', '9876543214', '2023-03-01', 5),
('Vihaan', 'Joshi', 'vihaan.joshi@abc.com', '9876543215', '2023-03-15', 1),
('Saisha', 'Kumar', 'saisha.kumar@abc.com', '9876543216', '2023-04-01', 2),
('Reyansh', 'Shah', 'reyansh.shah@abc.com', '9876543217', '2023-04-15', 3),
('Prisha', 'Singhania', 'prisha.singhania@abc.com', '9876543218', '2023-05-01', 4),
('Kabir', 'Mishra', 'kabir.mishra@abc.com', '9876543219', '2023-05-15', 5),
('Anika', 'Reddy', 'anika.reddy@abc.com', '9876543220', '2023-06-01', 1),
('Atharva', 'Rajput', 'atharva.rajput@abc.com', '9876543221', '2023-06-15', 2),
('Myra', 'Malhotra', 'myra.malhotra@abc.com', '9876543222', '2023-07-01', 3),
('Kian', 'Gupta', 'kian.gupta@abc.com', '9876543223', '2023-07-15', 4),
('Saanvi', 'Chopra', 'saanvi.chopra@abc.com', '9876543224', '2023-08-01', 5),
('Aayan', 'Bajaj', 'aayan.bajaj@abc.com', '9876543225', '2023-08-15', 1),
('Kiara', 'Dube', 'kiara.dube@abc.com', '9876543226', '2023-09-01', 2),
('Arnav', 'Nair', 'arnav.nair@abc.com', '9876543227', '2023-09-15', 3),
('Neha', 'Sachdeva', 'neha.sachdeva@abc.com', '9876543228', '2023-10-01', 4),
('Rudra', 'Sharma', 'rudra.sharma@abc.com', '9876543229', '2023-10-15', 5),
('Anika', 'Patel', 'anika.patel@abc.com', '9876543230', '2023-11-01', 1),
('Rohan', 'Sharma', 'rohan.sharma@abc.com', '9876543231', '2023-11-15', 2),
('Ishita', 'Choudhary', 'ishita.choudhary@abc.com', '9876543232', '2023-12-01', 3),
('Yash', 'Thakur', 'yash.thakur@abc.com', '9876543233', '2023-12-15', 4),
('Aarav', 'Gandhi', 'aarav.gandhi@abc.com', '9876543234', '2024-01-01', 5);
-- Table: Salary
CREATE TABLE Salary (
    salary_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    salary DECIMAL(10, 2),
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);
INSERT INTO Salary (employee_id, salary, start_date, end_date)
VALUES
(1, 5000.00, '2022-01-01', '2022-12-31'),
(2, 6000.00, '2022-01-01', '2022-12-31'),
(3, 7000.00, '2022-01-01', '2022-12-31'),
(4, 8000.00, '2022-01-01', '2022-12-31'),
(5, 9000.00, '2022-01-01', '2022-12-31'),
(6, 10000.00, '2022-01-01', '2022-12-31'),
(7, 11000.00, '2022-01-01', '2022-12-31'),
(8, 12000.00, '2022-01-01', '2022-12-31'),
(9, 13000.00, '2022-01-01', '2022-12-31'),
(10, 14000.00, '2022-01-01', '2022-12-31');
INSERT INTO Salary (employee_id, salary, start_date, end_date)
VALUES
(11, 15000.00, '2022-01-01', '2022-12-31'),
(12, 16000.00, '2022-01-01', '2022-12-31'),
(13, 17000.00, '2022-01-01', '2022-12-31'),
(14, 18000.00, '2022-01-01', '2022-12-31'),
(15, 19000.00, '2022-01-01', '2022-12-31'),
(16, 20000.00, '2022-01-01', '2022-12-31'),
(17, 21000.00, '2022-01-01', '2022-12-31'),
(18, 22000.00, '2022-01-01', '2022-12-31'),
(19, 23000.00, '2022-01-01', '2022-12-31'),
(20, 24000.00, '2022-01-01', '2022-12-31'),
(21, 25000.00, '2022-01-01', '2022-12-31'),
(22, 26000.00, '2022-01-01', '2022-12-31'),
(23, 27000.00, '2022-01-01', '2022-12-31'),
(24, 28000.00, '2022-01-01', '2022-12-31'),
(25, 29000.00, '2022-01-01', '2022-12-31');

-- Table: Address
CREATE TABLE Address (
    address_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    street VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    postal_code VARCHAR(20),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);
INSERT INTO Address (employee_id, street, city, state, postal_code)
VALUES
(1, 'Chhatrapati Shivaji Marg', 'Mumbai', 'Maharashtra', '12345'),
(2, 'Sane Guruji Marg', 'Bangalore', 'Karnataka', '67890'),
(3, 'Bombay Samachar Marg', 'Delhi', 'Delhi', '54321'),
(4, 'Jawaharlal Nehru Road', 'Kolkata', 'West Bengal', '98765'),
(5, 'MG Road', 'Chennai', 'Tamil Nadu', '23456'),
(6, 'Sector 17', 'Chandigarh', 'Punjab', '87654'),
(7, 'Devaraja Urs Road', 'Mysore', 'Karnataka', '34567'),
(8, 'Cross Cut Road', 'Coimbatore', 'Tamil Nadu', '76543'),
(9, 'JLN Road', 'Jaipur', 'Rajasthan', '45678'),
(10, 'Banjara Hills', 'Hyderabad', 'Telangana', '65432'),
(11, 'Ashram Road', 'Ahmedabad', 'Gujarat', '98765'),
(12, 'FC Road', 'Pune', 'Maharashtra', '23456'),
(13, 'Hazratganj', 'Lucknow', 'Uttar Pradesh', '87654'),
(14, 'Wardha Road', 'Nagpur', 'Maharashtra', '34567'),
(15, 'RS Puram', 'Coimbatore', 'Tamil Nadu', '76543'),
(16, 'MG Road', 'Indore', 'Madhya Pradesh', '45678'),
(17, 'MP Nagar', 'Bhopal', 'Madhya Pradesh', '65432'),
(18, 'MG Road', 'Kochi', 'Kerala', '98765'),
(19, 'Dwaraka Nagar', 'Visakhapatnam', 'Andhra Pradesh', '23456'),
(20, 'Fatehabad Road', 'Agra', 'Uttar Pradesh', '87654'),
(21, 'Assi Ghat Road', 'Varanasi', 'Uttar Pradesh', '34567'),
(22, 'Fraser Road', 'Patna', 'Bihar', '76543'),
(23, 'GS Road', 'Guwahati', 'Assam', '45678'),
(24, 'Ratu Road', 'Ranchi', 'Jharkhand', '65432'),
(25, 'The Mall Road', 'Shimla', 'Himachal Pradesh', '98765');
-- Table: Project
CREATE TABLE Project (
    project_id INT  PRIMARY KEY,
    project_name VARCHAR(255) NOT NULL,
    start_date DATE,
    end_date DATE,
    project_loc VARCHAR(25)
);

INSERT INTO Project (project_id, project_name, start_date, end_date, project_loc)
VALUES (101, 'Project A', '2024-01-01', '2024-06-30', 'Location A'),
       (102, 'Project B', '2024-02-15', '2024-12-31', 'Location B'),
       (103, 'Project C', '2024-03-10', '2024-09-30', 'Location C'),
       (104, 'Project D', '2024-04-05', '2024-11-30', 'Location D'),
       (105, 'Project E', '2024-05-20', '2024-10-31', 'Location E'),
       (106, 'Project F', '2024-06-15', '2024-12-15', 'Location F'),
       (107, 'Project G', '2024-07-01', '2024-12-31', 'Location G'),
       (108, 'Project H', '2024-08-10', '2024-11-30', 'Location H'),
       (109, 'Project I', '2024-09-05', '2024-10-31', 'Location I'),
       (110, 'Project J', '2024-10-01', '2024-12-31', 'Location J'),
       (111, 'Project K', '2024-11-15', '2024-12-15', 'Location K'),
       (112, 'Project L', '2024-12-01', '2024-12-31', 'Location L'),
       (113, 'Project M', '2024-01-15', '2024-06-30', 'Location M'),
       (114, 'Project N', '2024-02-20', '2024-12-31', 'Location N'),
       (115, 'Project O', '2024-03-05', '2024-09-30', 'Location O'),
       (116, 'Project P', '2024-04-10', '2024-11-30', 'Location P'),
       (117, 'Project Q', '2024-05-25', '2024-10-31', 'Location Q'),
       (118, 'Project R', '2024-06-20', '2024-12-15', 'Location R'),
       (119, 'Project S', '2024-07-05', '2024-12-31', 'Location S'),
       (120, 'Project T', '2024-08-15', '2024-11-30', 'Location T');
-- Table: Employee_Project
CREATE TABLE Employee_Project (
    employee_id INT,
    project_id INT,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
    FOREIGN KEY (project_id) REFERENCES Project(project_id),
    PRIMARY KEY (employee_id, project_id)
);
INSERT INTO Employee_Project (employee_id, project_id)
VALUES (1, 101),
       (2, 102),
       (3, 103),
       (4, 104),
       (5, 105),
       (6, 106),
       (7, 107),
       (8, 108),
       (9, 109),
       (10, 110),
       (11, 111),
       (12, 112),
       (13, 113),
       (14, 114),
       (15, 115),
       (16, 116),
       (17, 117),
       (18, 118),
       (19, 119),
       (20, 120),
       (21, 101),
       (22, 102),
       (23, 103),
       (24, 104),
       (25, 105);


-- Table: Task
CREATE TABLE Task (
    task_id INT AUTO_INCREMENT PRIMARY KEY,
    task_name VARCHAR(255) NOT NULL,
    project_id INT,
    FOREIGN KEY (project_id) REFERENCES Project(project_id)
);
INSERT INTO Task (task_id,task_name, project_id) VALUES

(01, 'Research market trends', 101),
(02, 'Design user interface', 103),
(03, 'Write test cases', 102),
(04, 'Optimize database performance', 104),
(05, 'Conduct user testing', 107),
(06, 'Coordinate project meetings', 109),
(07, 'Implement security measures', 111),
(08, 'Perform code review', 113),
(09, 'Prepare project presentation', 115),
(010, 'Integrate third-party APIs', 117),
(011, 'Resolve bug reports', 119),
(012, 'Create data visualizations',120),
(013, 'Manage project timeline', 110),
(014, 'Develop backend functionality', 103),
(015, 'Write test cases', 105),
(016, 'Design user interface', 102),
(017, 'Conduct user testing', 104),
(018, 'Resolve bug reports', 106),
(019, 'Create documentation', 108),
(020, 'Optimize database performance', 112),
(021, 'Perform code review', 114),
(022, 'Integrate third-party APIs', 116),
(024, 'Manage project timeline', 117),
(025, 'Manage project timeline', 119),
(026, 'Manage project timeline', 120);
-- Table: Attendance
CREATE TABLE Attendance(
    attendance varchar(10),
    employee_id INT,
    date DATE,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);
INSERT INTO Attendance (attendance, employee_id, date)
VALUES
('present', 1, '2024-03-22'),
('absent', 2, '2024-03-22'),
('present', 3, '2024-03-22'),
('absent', 4, '2024-03-22'),
('present', 5, '2024-03-22'),
('absent', 6, '2024-03-22'),
('present', 7, '2024-03-22'),
('absent', 8, '2024-03-22'),
('present', 9, '2024-03-22'),
('absent', 10, '2024-03-22'),
('present', 11, '2024-03-22'),
('absent', 12, '2024-03-22'),
('present', 13, '2024-03-22'),
('absent', 14, '2024-03-22'),
('present', 15, '2024-03-22'),
('absent', 16, '2024-03-22'),
('present', 17, '2024-03-22'),
('absent', 18, '2024-03-22'),
('present', 19, '2024-03-22'),
('absent', 20, '2024-03-22'),
('present', 21, '2024-03-22'),
('absent', 22, '2024-03-22'),
('present', 23, '2024-03-22'),
('absent', 24, '2024-03-22'),
('present', 25, '2024-03-22');
-- Table: Leave
CREATE TABLE Emp_Leave (
    leave_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    start_date DATE,
    end_date DATE,
    reason VARCHAR(255),
    status ENUM('Pending', 'Approved', 'Rejected'),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);
INSERT INTO Emp_leave(employee_id,start_date, end_date,reason) VALUES
(1, '2024-03-22', '2024-03-25', 'Vacation'),
(2, '2024-03-23', '2024-03-24', 'Sick Leave'),
(3, '2024-03-24', '2024-03-26', 'Family Emergency'),
(4, '2024-03-25', '2024-03-27', 'Personal Time Off'),
(5, '2024-03-26', '2024-03-28', 'Medical Appointment'),
(6, '2024-03-27', '2024-03-29', 'Maternity Leave'),
(7, '2024-03-28', '2024-03-30', 'Paternity Leave'),
(8, '2024-03-29', '2024-03-31', 'Personal Leave'),
(9, '2024-03-30', '2024-04-01', 'Mental Health Day'),
(10, '2024-03-31', '2024-04-02', 'Remote Work'),
(11, '2024-04-01', '2024-04-03', 'Comp Time'),
(12, '2024-04-02', '2024-04-04', 'Unpaid Leave'),
(13, '2024-04-03', '2024-04-05', 'Jury Duty'),
(14, '2024-04-04', '2024-04-06', 'Volunteer Time Off'),
(15, '2024-04-05', '2024-04-07', 'Study Leave'),
(16, '2024-04-06', '2024-04-08', 'Sabbatical'),
(17, '2024-04-07', '2024-04-09', 'Travel Leave'),
(18, '2024-04-08', '2024-04-10', 'Administrative Leave'),
(19, '2024-04-09', '2024-04-11', 'Training Leave'),
(20, '2024-04-10', '2024-04-12', 'Sabbatical'),
(21, '2024-04-11', '2024-04-13', 'Personal Time Off'),
(22, '2024-04-12', '2024-04-14', 'Vacation'),
(23, '2024-04-13', '2024-04-15', 'Sick Leave'),
(24, '2024-04-14', '2024-04-16', 'Family Emergency'),
(25, '2024-04-15', '2024-04-17', 'Personal Time Off');

-- Table: Document
CREATE TABLE Document (
    document_id INT primary key,
    document_name VARCHAR(255) NOT NULL,
    employee_id INT,
    uploaded_date DATE,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);
INSERT INTO Document (document_id, document_name, employee_id, uploaded_date) VALUES
(1, 'Aadhar', 1, '2024-03-22'),
(2, 'Pancard', 2, '2024-03-23'),
(3, 'Drivers License', 3, '2024-03-24'),
(4, 'Aadhar', 4, '2024-03-25'),
(5, 'Pancard', 5, '2024-03-26'),
(6, 'Drivers License', 6, '2024-03-27'),
(7, 'Aadhar', 7, '2024-03-28'),
(8, 'Pancard', 8, '2024-03-29'),
(9, 'Drivers License', 9, '2024-03-30'),
(10, 'Aadhar', 10, '2024-03-31'),
(11, 'Pancard', 11, '2024-04-01'),
(12, 'Drivers License', 12, '2024-04-02'),
(13, 'Aadhar', 13, '2024-04-03'),
(14, 'Pancard', 14, '2024-04-04'),
(15, 'Drivers License', 15, '2024-04-05'),
(16, 'Aadhar', 16, '2024-04-06'),
(17, 'Pancard', 17, '2024-04-07'),
(18, 'Drivers License', 18, '2024-04-08'),
(19, 'Aadhar', 19, '2024-04-09'),
(20, 'Pancard', 20, '2024-04-10'),
(21, 'Drivers License', 21, '2024-04-11'),
(22, 'Aadhar', 22, '2024-04-12'),
(23, 'Pancard', 23, '2024-04-13'),
(24, 'Drivers License', 24, '2024-04-14'),
(25, 'Aadhar', 25, '2024-04-15');


Select * from Employee;
Select * from Department;
select * from Salary;
select * from Address;
select * from Project;
select * from Employee_project;
select * from Task;
Select * from Attendance;
select * from Emp_Leave;
Select * from document;

Alter table Emp_Leave
drop status;

-- where using and
SELECT * FROM Employee WHERE department_id = 2 AND hire_date > '2023-01-01';

-- where using OR
SELECT * FROM Project WHERE project_loc = 'Location A' OR project_loc = 'Location B';

-- where uisnh between
SELECT * FROM Salary WHERE salary BETWEEN 5000 AND 10000;

-- where using like
SELECT * FROM Employee WHERE first_name LIKE 'A%';

-- where using NOT
SELECT * FROM Attendance WHERE NOT attendance = 'present';


-- ORDER BY CLAUSE
SELECT * FROM Department ORDER BY department_id;


-- JOINS
-- Left outer join
SELECT *
FROM Employee
LEFT OUTER JOIN Address ON Employee.employee_id = Address.employee_id;

-- NATURAL JOIN

SELECT *
FROM Employee
NATURAL JOIN Department;

-- RIGHT OUTER JOIN

SELECT Employee.employee_id, Employee.first_name, Employee.last_name, Attendance.attendance, Attendance.date
FROM Employee
RIGHT OUTER JOIN Attendance ON Employee.employee_id = Attendance.employee_id;

-- ORDER BY ASC
SELECT *
FROM Department
ORDER BY manager_id ASC;

-- ORDER BY DESC
SELECT *
FROM Salary
ORDER BY salary DESC;


-- AGGREGATE FUNCTIONS
SELECT COUNT(*) AS total_employees
FROM Employee;


SELECT AVG(manager_id) AS avg_manager_id
FROM Department;


SELECT MAX(project_id) AS max_project_id
FROM Project;

SELECT employee_id, COUNT(*) AS total_present
FROM Attendance
WHERE attendance = 'present'
GROUP BY employee_id;


SELECT department_id, AVG(manager_id) AS avg_manager_id
FROM Department
GROUP BY department_id
HAVING avg_manager_id > 105;




SELECT e.employee_id, e.first_name, e.last_name, e.email, e.phone_number, d.department_name, s.salary
FROM Employee e
INNER JOIN Department d ON e.department_id = d.department_id
INNER JOIN Salary s ON e.employee_id = s.employee_id
WHERE s.salary > 10000;

-- DISTINCT 
SELECT DISTINCT department_name
FROM Department;

SELECT SUM(salary) AS total_salary_expenditure
FROM Salary;

select * from department


















