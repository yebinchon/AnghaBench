
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PCI_D3hot ;
 int pci_prepare_to_sleep (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 int pci_wake_from_d3 (struct pci_dev*,int) ;

__attribute__((used)) static int __e100_power_off(struct pci_dev *pdev, bool wake)
{
 if (wake)
  return pci_prepare_to_sleep(pdev);

 pci_wake_from_d3(pdev, 0);
 pci_set_power_state(pdev, PCI_D3hot);

 return 0;
}
