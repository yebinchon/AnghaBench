
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int pdev; } ;


 int MLX5_VSC_UNLOCK ;
 int VSC_SEMAPHORE_OFFSET ;
 int pci_cfg_access_unlock (int ) ;
 int vsc_write (struct mlx5_core_dev*,int ,int ) ;

int mlx5_vsc_gw_unlock(struct mlx5_core_dev *dev)
{
 int ret;

 ret = vsc_write(dev, VSC_SEMAPHORE_OFFSET, MLX5_VSC_UNLOCK);
 pci_cfg_access_unlock(dev->pdev);
 return ret;
}
