
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmxnet3_adapter {int pdev; int hw_addr1; int hw_addr0; } ;


 int BUG_ON (int) ;
 int iounmap (int ) ;
 int pci_disable_device (int ) ;
 int pci_release_selected_regions (int ,int) ;

__attribute__((used)) static void
vmxnet3_free_pci_resources(struct vmxnet3_adapter *adapter)
{
 BUG_ON(!adapter->pdev);

 iounmap(adapter->hw_addr0);
 iounmap(adapter->hw_addr1);
 pci_release_selected_regions(adapter->pdev, (1 << 2) - 1);
 pci_disable_device(adapter->pdev);
}
