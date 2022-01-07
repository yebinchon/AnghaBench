
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int pdev; } ;


 int mlx5_core_is_pf (struct mlx5_core_dev*) ;
 int mlx5_device_enable_sriov (struct mlx5_core_dev*,int ) ;
 int pci_num_vf (int ) ;

int mlx5_sriov_attach(struct mlx5_core_dev *dev)
{
 if (!mlx5_core_is_pf(dev) || !pci_num_vf(dev->pdev))
  return 0;


 return mlx5_device_enable_sriov(dev, pci_num_vf(dev->pdev));
}
