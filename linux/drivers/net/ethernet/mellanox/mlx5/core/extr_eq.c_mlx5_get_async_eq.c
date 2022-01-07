
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mlx5_eq {int dummy; } ;
struct TYPE_6__ {TYPE_2__* eq_table; } ;
struct mlx5_core_dev {TYPE_3__ priv; } ;
struct TYPE_4__ {struct mlx5_eq core; } ;
struct TYPE_5__ {TYPE_1__ async_eq; } ;



struct mlx5_eq *mlx5_get_async_eq(struct mlx5_core_dev *dev)
{
 return &dev->priv.eq_table->async_eq.core;
}
