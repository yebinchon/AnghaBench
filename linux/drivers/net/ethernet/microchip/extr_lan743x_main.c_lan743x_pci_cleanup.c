
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lan743x_adapter {int pdev; } ;


 int IORESOURCE_MEM ;
 int pci_disable_device (int ) ;
 int pci_release_selected_regions (int ,int ) ;
 int pci_select_bars (int ,int ) ;

__attribute__((used)) static void lan743x_pci_cleanup(struct lan743x_adapter *adapter)
{
 pci_release_selected_regions(adapter->pdev,
         pci_select_bars(adapter->pdev,
           IORESOURCE_MEM));
 pci_disable_device(adapter->pdev);
}
