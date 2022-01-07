
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int vsc_addr; int pdev; } ;


 int PCI_CAP_ID_VNDR ;
 int mlx5_core_is_pf (struct mlx5_core_dev*) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*) ;
 int pci_find_capability (int ,int ) ;

void mlx5_pci_vsc_init(struct mlx5_core_dev *dev)
{
 if (!mlx5_core_is_pf(dev))
  return;

 dev->vsc_addr = pci_find_capability(dev->pdev,
         PCI_CAP_ID_VNDR);
 if (!dev->vsc_addr)
  mlx5_core_warn(dev, "Failed to get valid vendor specific ID\n");
}
