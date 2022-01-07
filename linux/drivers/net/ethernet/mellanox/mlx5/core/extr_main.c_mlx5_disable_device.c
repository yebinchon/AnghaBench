
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;


 int mlx5_error_sw_reset (struct mlx5_core_dev*) ;
 int mlx5_unload_one (struct mlx5_core_dev*,int) ;

void mlx5_disable_device(struct mlx5_core_dev *dev)
{
 mlx5_error_sw_reset(dev);
 mlx5_unload_one(dev, 0);
}
