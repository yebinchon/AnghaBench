
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct mlxsw_pci {int pdev; int hw_addr; int core; } ;


 int iounmap (int ) ;
 int kfree (struct mlxsw_pci*) ;
 int mlxsw_core_bus_device_unregister (int ,int) ;
 int pci_disable_device (int ) ;
 struct mlxsw_pci* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (int ) ;

__attribute__((used)) static void mlxsw_pci_remove(struct pci_dev *pdev)
{
 struct mlxsw_pci *mlxsw_pci = pci_get_drvdata(pdev);

 mlxsw_core_bus_device_unregister(mlxsw_pci->core, 0);
 iounmap(mlxsw_pci->hw_addr);
 pci_release_regions(mlxsw_pci->pdev);
 pci_disable_device(mlxsw_pci->pdev);
 kfree(mlxsw_pci);
}
