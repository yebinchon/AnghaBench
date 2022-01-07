
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int dummy; } ;
typedef int resource_size_t ;



__attribute__((used)) static resource_size_t cxl_pci_window_alignment(struct pci_bus *bus,
      unsigned long type)
{
 return 1;
}
