# Write your MySQL query statement below
(select U.name as results
from Users U
join MovieRating MR on u.user_id = MR.user_id
group by U.user_id , U.name
order by count(*)desc , U.name asc
limit 1)
union all
(select M.title as results
from Movies M
join MovieRating MR on M.movie_id = MR.movie_id 
where MR.created_at between '2020-02-01' and '2020-02-29'
group by M.movie_id , M.title
order by avg(rating) desc, M.title asc
limit 1)