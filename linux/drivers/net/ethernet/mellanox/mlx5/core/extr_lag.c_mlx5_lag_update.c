
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_lag {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;


 int mlx5_dev_list_lock () ;
 int mlx5_dev_list_unlock () ;
 int mlx5_do_bond (struct mlx5_lag*) ;
 struct mlx5_lag* mlx5_lag_dev_get (struct mlx5_core_dev*) ;

void mlx5_lag_update(struct mlx5_core_dev *dev)
{
 struct mlx5_lag *ldev;

 mlx5_dev_list_lock();
 ldev = mlx5_lag_dev_get(dev);
 if (!ldev)
  goto unlock;

 mlx5_do_bond(ldev);

unlock:
 mlx5_dev_list_unlock();
}
