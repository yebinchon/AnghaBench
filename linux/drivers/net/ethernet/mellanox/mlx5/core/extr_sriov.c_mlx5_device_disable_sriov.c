
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_core_sriov {TYPE_1__* vfs_ctx; } ;
struct TYPE_4__ {int vfs_pages; int eswitch; struct mlx5_core_sriov sriov; } ;
struct mlx5_core_dev {TYPE_2__ priv; int pdev; } ;
struct TYPE_3__ {scalar_t__ enabled; } ;


 scalar_t__ MLX5_ESWITCH_MANAGER (struct mlx5_core_dev*) ;
 int mlx5_core_disable_hca (struct mlx5_core_dev*,int) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,...) ;
 int mlx5_eswitch_disable (int ) ;
 scalar_t__ mlx5_wait_for_pages (struct mlx5_core_dev*,int *) ;
 int pci_num_vf (int ) ;

__attribute__((used)) static void mlx5_device_disable_sriov(struct mlx5_core_dev *dev)
{
 struct mlx5_core_sriov *sriov = &dev->priv.sriov;
 int num_vfs = pci_num_vf(dev->pdev);
 int err;
 int vf;

 for (vf = num_vfs - 1; vf >= 0; vf--) {
  if (!sriov->vfs_ctx[vf].enabled)
   continue;
  err = mlx5_core_disable_hca(dev, vf + 1);
  if (err) {
   mlx5_core_warn(dev, "failed to disable VF %d\n", vf);
   continue;
  }
  sriov->vfs_ctx[vf].enabled = 0;
 }

 if (MLX5_ESWITCH_MANAGER(dev))
  mlx5_eswitch_disable(dev->priv.eswitch);

 if (mlx5_wait_for_pages(dev, &dev->priv.vfs_pages))
  mlx5_core_warn(dev, "timeout reclaiming VFs pages\n");
}
