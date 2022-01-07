
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct mlx5dr_matcher_rx_tx {scalar_t__ num_of_builders; } ;



bool mlx5dr_ste_is_last_in_rule(struct mlx5dr_matcher_rx_tx *nic_matcher,
    u8 ste_location)
{
 return ste_location == nic_matcher->num_of_builders;
}
