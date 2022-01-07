
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_lag {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;


 scalar_t__ __mlx5_lag_is_multipath (struct mlx5_lag*) ;
 struct mlx5_lag* mlx5_lag_dev_get (struct mlx5_core_dev*) ;

bool mlx5_lag_is_multipath(struct mlx5_core_dev *dev)
{
 struct mlx5_lag *ldev;
 bool res;

 ldev = mlx5_lag_dev_get(dev);
 res = ldev && __mlx5_lag_is_multipath(ldev);

 return res;
}
