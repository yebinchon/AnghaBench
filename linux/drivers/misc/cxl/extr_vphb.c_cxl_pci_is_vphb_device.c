
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int bus; } ;
struct pci_controller {int * ops; } ;


 int cxl_pcie_pci_ops ;
 struct pci_controller* pci_bus_to_host (int ) ;

bool cxl_pci_is_vphb_device(struct pci_dev *dev)
{
 struct pci_controller *phb;

 phb = pci_bus_to_host(dev->bus);

 return (phb->ops == &cxl_pcie_pci_ops);
}
