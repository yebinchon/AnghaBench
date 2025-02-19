
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int roce_en; } ;
struct mlx5_core_dev {TYPE_1__ roce; } ;


 int MLX5_VPORT_ROCE_ENABLED ;
 int mlx5_nic_vport_update_roce_state (struct mlx5_core_dev*,int ) ;
 int mlx5_roce_en_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int mlx5_nic_vport_enable_roce(struct mlx5_core_dev *mdev)
{
 int err = 0;

 mutex_lock(&mlx5_roce_en_lock);
 if (!mdev->roce.roce_en)
  err = mlx5_nic_vport_update_roce_state(mdev, MLX5_VPORT_ROCE_ENABLED);

 if (!err)
  mdev->roce.roce_en++;
 mutex_unlock(&mlx5_roce_en_lock);

 return err;
}
