
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;


 int mlx5_add_dev_by_protocol (struct mlx5_core_dev*,int) ;
 scalar_t__ mlx5_has_added_dev_by_protocol (struct mlx5_core_dev*,int) ;
 int mlx5_intf_mutex ;
 int mlx5_remove_dev_by_protocol (struct mlx5_core_dev*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void mlx5_reload_interface(struct mlx5_core_dev *mdev, int protocol)
{
 mutex_lock(&mlx5_intf_mutex);
 if (mlx5_has_added_dev_by_protocol(mdev, protocol)) {
  mlx5_remove_dev_by_protocol(mdev, protocol);
  mlx5_add_dev_by_protocol(mdev, protocol);
 }
 mutex_unlock(&mlx5_intf_mutex);
}
