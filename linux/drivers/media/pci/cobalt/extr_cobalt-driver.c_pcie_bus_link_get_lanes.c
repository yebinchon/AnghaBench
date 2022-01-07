
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dummy; } ;
struct cobalt {TYPE_2__* pci_dev; } ;
struct TYPE_4__ {TYPE_1__* bus; } ;
struct TYPE_3__ {struct pci_dev* self; } ;


 int PCI_EXP_LNKCAP ;
 int PCI_EXP_LNKCAP_MLW ;
 int pci_is_pcie (struct pci_dev*) ;
 int pcie_capability_read_dword (struct pci_dev*,int ,int*) ;

__attribute__((used)) static unsigned pcie_bus_link_get_lanes(struct cobalt *cobalt)
{
 struct pci_dev *pci_dev = cobalt->pci_dev->bus->self;
 u32 link;

 if (!pci_is_pcie(pci_dev))
  return 0;
 pcie_capability_read_dword(pci_dev, PCI_EXP_LNKCAP, &link);
 return (link & PCI_EXP_LNKCAP_MLW) >> 4;
}
