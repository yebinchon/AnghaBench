
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_controller {int bus; } ;
struct cxl_afu {struct pci_controller* phb; } ;


 int pci_remove_root_bus (int ) ;

void cxl_pci_vphb_remove(struct cxl_afu *afu)
{
 struct pci_controller *phb;


 if (!afu || !afu->phb)
  return;

 phb = afu->phb;
 afu->phb = ((void*)0);

 pci_remove_root_bus(phb->bus);




}
