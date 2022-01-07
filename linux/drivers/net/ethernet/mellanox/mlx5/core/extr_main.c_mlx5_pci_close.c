
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int pdev; int iseg; } ;


 int iounmap (int ) ;
 int mlx5_pci_disable_device (struct mlx5_core_dev*) ;
 int pci_clear_master (int ) ;
 int release_bar (int ) ;

__attribute__((used)) static void mlx5_pci_close(struct mlx5_core_dev *dev)
{
 iounmap(dev->iseg);
 pci_clear_master(dev->pdev);
 release_bar(dev->pdev);
 mlx5_pci_disable_device(dev);
}
