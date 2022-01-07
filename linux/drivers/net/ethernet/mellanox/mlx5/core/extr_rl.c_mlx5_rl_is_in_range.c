
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct mlx5_rl_table {scalar_t__ max_rate; scalar_t__ min_rate; } ;
struct TYPE_2__ {struct mlx5_rl_table rl_table; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;



bool mlx5_rl_is_in_range(struct mlx5_core_dev *dev, u32 rate)
{
 struct mlx5_rl_table *table = &dev->priv.rl_table;

 return (rate <= table->max_rate && rate >= table->min_rate);
}
