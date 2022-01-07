
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int devfn; scalar_t__ current_state; TYPE_1__* bus; } ;
struct TYPE_2__ {int number; } ;


 scalar_t__ PCI_D3cold ;
 int PCI_DEVFN (int ,int) ;
 int PCI_SLOT (int) ;
 int pci_dev_put (struct pci_dev*) ;
 int pci_domain_nr (TYPE_1__*) ;
 struct pci_dev* pci_get_domain_bus_and_slot (int ,int ,int ) ;

__attribute__((used)) static int qlcnic_is_first_func(struct pci_dev *pdev)
{
 struct pci_dev *oth_pdev;
 int val = pdev->devfn;

 while (val-- > 0) {
  oth_pdev = pci_get_domain_bus_and_slot(pci_domain_nr
   (pdev->bus), pdev->bus->number,
   PCI_DEVFN(PCI_SLOT(pdev->devfn), val));
  if (!oth_pdev)
   continue;

  if (oth_pdev->current_state != PCI_D3cold) {
   pci_dev_put(oth_pdev);
   return 0;
  }
  pci_dev_put(oth_pdev);
 }
 return 1;
}
