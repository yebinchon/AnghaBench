
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {TYPE_1__* subordinate; } ;
struct TYPE_2__ {int number; } ;


 struct pci_dev* pci_get_domain_bus_and_slot (int ,int,unsigned int) ;

__attribute__((used)) static struct pci_dev *ixgbe_get_first_secondary_devfn(unsigned int devfn)
{
 struct pci_dev *rp_pdev;
 int bus;

 rp_pdev = pci_get_domain_bus_and_slot(0, 0, devfn);
 if (rp_pdev && rp_pdev->subordinate) {
  bus = rp_pdev->subordinate->number;
  return pci_get_domain_bus_and_slot(0, bus, 0);
 }

 return ((void*)0);
}
