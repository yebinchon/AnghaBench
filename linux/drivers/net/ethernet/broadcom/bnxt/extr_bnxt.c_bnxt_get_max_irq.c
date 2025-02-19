
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {scalar_t__ msix_cap; } ;


 scalar_t__ PCI_MSIX_FLAGS ;
 int PCI_MSIX_FLAGS_QSIZE ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,int*) ;

__attribute__((used)) static int bnxt_get_max_irq(struct pci_dev *pdev)
{
 u16 ctrl;

 if (!pdev->msix_cap)
  return 1;

 pci_read_config_word(pdev, pdev->msix_cap + PCI_MSIX_FLAGS, &ctrl);
 return (ctrl & PCI_MSIX_FLAGS_QSIZE) + 1;
}
