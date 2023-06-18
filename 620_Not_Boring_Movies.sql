# NOTE :- In this context, it's important to note that the table names used in the examples include underscores and numbers, 
# which differ from the naming conventions used in the LeetCode problem.

Create table If Not Exists Cinema_16
(
id int, 
movie varchar(255), 
description varchar(255), 
rating float(2, 1)
);

Truncate table Cinema_16;

insert into Cinema_16 (id, movie, description, rating) values ('1', 'War', 'great 3D', '8.9');
insert into Cinema_16 (id, movie, description, rating) values ('2', 'Science', 'fiction', '8.5');
insert into Cinema_16 (id, movie, description, rating) values ('3', 'irish', 'boring', '6.2');
insert into Cinema_16 (id, movie, description, rating) values ('4', 'Ice song', 'Fantacy', '8.6');
insert into Cinema_16 (id, movie, description, rating) values ('5', 'House card', 'Interesting', '9.1');

/*
Q.Write an SQL query to report the movies with an odd-numbered ID and a description that is not "boring".
Return the result table ordered by rating in descending order.
The query result format is in the following example.

Input: 
Cinema table:
+----+------------+-------------+--------+
| id | movie      | description | rating |
+----+------------+-------------+--------+
| 1  | War        | great 3D    | 8.9    |
| 2  | Science    | fiction     | 8.5    |
| 3  | irish      | boring      | 6.2    |
| 4  | Ice song   | Fantacy     | 8.6    |
| 5  | House card | Interesting | 9.1    |
+----+------------+-------------+--------+
Output: 
+----+------------+-------------+--------+
| id | movie      | description | rating |
+----+------------+-------------+--------+
| 5  | House card | Interesting | 9.1    |
| 1  | War        | great 3D    | 8.9    |
+----+------------+-------------+--------+
Explanation: 
We have three movies with odd-numbered IDs: 1, 3, and 5. The movie with ID = 3 is boring so we do not include it in the answer.
*/

SELECT * FROM Cinema_16;

# Type 1 :- 
SELECT * 
FROM Cinema_16
WHERE id%2<>0 AND description<>"boring"
ORDER BY rating DESC;

# Type 2 :-
SELECT id, movie, description, rating
FROM Cinema_16
WHERE (id % 2 = 1) AND (NOT description = 'boring')
ORDER BY rating DESC;

# Type 3 :-
SELECT id, movie, description, rating
FROM Cinema_16
WHERE id % 2 = 1 AND description NOT LIKE 'boring'
ORDER BY rating DESC;
