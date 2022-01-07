
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_rate_limit {scalar_t__ rate; scalar_t__ max_burst_sz; scalar_t__ typical_pkt_sz; } ;



bool mlx5_rl_are_equal(struct mlx5_rate_limit *rl_0,
         struct mlx5_rate_limit *rl_1)
{
 return ((rl_0->rate == rl_1->rate) &&
  (rl_0->max_burst_sz == rl_1->max_burst_sz) &&
  (rl_0->typical_pkt_sz == rl_1->typical_pkt_sz));
}
