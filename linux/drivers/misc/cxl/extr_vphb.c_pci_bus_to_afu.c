
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_controller {struct cxl_afu* private_data; } ;
struct pci_bus {int dummy; } ;
struct cxl_afu {int dummy; } ;


 struct pci_controller* pci_bus_to_host (struct pci_bus*) ;

__attribute__((used)) static inline struct cxl_afu *pci_bus_to_afu(struct pci_bus *bus)
{
 struct pci_controller *phb = bus ? pci_bus_to_host(bus) : ((void*)0);

 return phb ? phb->private_data : ((void*)0);
}
