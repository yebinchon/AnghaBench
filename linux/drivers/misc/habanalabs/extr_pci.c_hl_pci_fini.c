
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {int pdev; } ;


 int hl_pci_bars_unmap (struct hl_device*) ;
 int pci_clear_master (int ) ;
 int pci_disable_device (int ) ;

void hl_pci_fini(struct hl_device *hdev)
{
 hl_pci_bars_unmap(hdev);

 pci_clear_master(hdev->pdev);
 pci_disable_device(hdev->pdev);
}
