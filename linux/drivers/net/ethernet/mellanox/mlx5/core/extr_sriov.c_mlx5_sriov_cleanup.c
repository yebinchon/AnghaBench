
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_core_sriov {int vfs_ctx; } ;
struct TYPE_2__ {struct mlx5_core_sriov sriov; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int kfree (int ) ;
 int mlx5_core_is_pf (struct mlx5_core_dev*) ;

void mlx5_sriov_cleanup(struct mlx5_core_dev *dev)
{
 struct mlx5_core_sriov *sriov = &dev->priv.sriov;

 if (!mlx5_core_is_pf(dev))
  return;

 kfree(sriov->vfs_ctx);
}
