
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int bus; } ;
struct pci_controller {scalar_t__ private_data; } ;
struct cxl_afu {int dummy; } ;


 struct pci_controller* pci_bus_to_host (int ) ;

struct cxl_afu *cxl_pci_to_afu(struct pci_dev *dev)
{
 struct pci_controller *phb;

 phb = pci_bus_to_host(dev->bus);

 return (struct cxl_afu *)phb->private_data;
}
