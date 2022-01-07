
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int dummy; } ;


 int PCI_PROBE_NORMAL ;

__attribute__((used)) static int cxl_pci_probe_mode(struct pci_bus *bus)
{
 return PCI_PROBE_NORMAL;
}
