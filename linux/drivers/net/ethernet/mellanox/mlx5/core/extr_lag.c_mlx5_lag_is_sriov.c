
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_lag {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;


 scalar_t__ __mlx5_lag_is_sriov (struct mlx5_lag*) ;
 int lag_mutex ;
 struct mlx5_lag* mlx5_lag_dev_get (struct mlx5_core_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

bool mlx5_lag_is_sriov(struct mlx5_core_dev *dev)
{
 struct mlx5_lag *ldev;
 bool res;

 mutex_lock(&lag_mutex);
 ldev = mlx5_lag_dev_get(dev);
 res = ldev && __mlx5_lag_is_sriov(ldev);
 mutex_unlock(&lag_mutex);

 return res;
}
