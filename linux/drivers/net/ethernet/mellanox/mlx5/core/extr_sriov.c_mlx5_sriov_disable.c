
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;


 int mlx5_device_disable_sriov (struct mlx5_core_dev*) ;
 int pci_disable_sriov (struct pci_dev*) ;
 struct mlx5_core_dev* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void mlx5_sriov_disable(struct pci_dev *pdev)
{
 struct mlx5_core_dev *dev = pci_get_drvdata(pdev);

 pci_disable_sriov(pdev);
 mlx5_device_disable_sriov(dev);
}
