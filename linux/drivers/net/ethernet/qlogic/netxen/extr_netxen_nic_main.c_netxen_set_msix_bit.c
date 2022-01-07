
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {scalar_t__ msix_cap; } ;


 int PCI_MSIX_FLAGS_ENABLE ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int *) ;
 int pci_write_config_dword (struct pci_dev*,scalar_t__,int ) ;

__attribute__((used)) static void netxen_set_msix_bit(struct pci_dev *pdev, int enable)
{
 u32 control;

 if (pdev->msix_cap) {
  pci_read_config_dword(pdev, pdev->msix_cap, &control);
  if (enable)
   control |= PCI_MSIX_FLAGS_ENABLE;
  else
   control = 0;
  pci_write_config_dword(pdev, pdev->msix_cap, control);
 }
}
