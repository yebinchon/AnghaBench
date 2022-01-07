
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct be_adapter {int netdev; int pdev; } ;


 int be_cancel_err_detection (struct be_adapter*) ;
 int be_clear (struct be_adapter*) ;
 int be_cmd_fw_clean (struct be_adapter*) ;
 int be_cmd_reset_function (struct be_adapter*) ;
 int be_drv_cleanup (struct be_adapter*) ;
 int be_intr_set (struct be_adapter*,int) ;
 int be_roce_dev_remove (struct be_adapter*) ;
 int be_unmap_pci_bars (struct be_adapter*) ;
 int free_netdev (int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_pcie_error_reporting (struct pci_dev*) ;
 struct be_adapter* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_vfs_assigned (int ) ;
 int unregister_netdev (int ) ;

__attribute__((used)) static void be_remove(struct pci_dev *pdev)
{
 struct be_adapter *adapter = pci_get_drvdata(pdev);

 if (!adapter)
  return;

 be_roce_dev_remove(adapter);
 be_intr_set(adapter, 0);

 be_cancel_err_detection(adapter);

 unregister_netdev(adapter->netdev);

 be_clear(adapter);

 if (!pci_vfs_assigned(adapter->pdev))
  be_cmd_reset_function(adapter);


 be_cmd_fw_clean(adapter);

 be_unmap_pci_bars(adapter);
 be_drv_cleanup(adapter);

 pci_disable_pcie_error_reporting(pdev);

 pci_release_regions(pdev);
 pci_disable_device(pdev);

 free_netdev(adapter->netdev);
}
