
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;


 int mlx5_core_is_pf (struct mlx5_core_dev*) ;
 int mlx5_device_disable_sriov (struct mlx5_core_dev*) ;

void mlx5_sriov_detach(struct mlx5_core_dev *dev)
{
 if (!mlx5_core_is_pf(dev))
  return;

 mlx5_device_disable_sriov(dev);
}
