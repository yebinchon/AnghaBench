
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pci_controller {TYPE_3__* bus; int controller_ops; struct cxl_afu* private_data; int * cfg_data; int * cfg_addr; int * ops; struct device* parent; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct cxl_afu {struct pci_controller* phb; TYPE_2__* adapter; int crs_num; } ;
struct TYPE_7__ {int bridge; } ;
struct TYPE_5__ {struct device* parent; } ;
struct TYPE_6__ {TYPE_1__ dev; } ;


 int ENODEV ;
 int ENXIO ;
 int cxl_pci_controller_ops ;
 int cxl_pcie_pci_ops ;
 int pci_bus_add_devices (TYPE_3__*) ;
 int pci_set_host_bridge_release (int ,int ,void*) ;
 struct pci_controller* pcibios_alloc_controller (struct device_node*) ;
 int pcibios_claim_one_bus (TYPE_3__*) ;
 int pcibios_free_controller_deferred ;
 int pcibios_scan_phb (struct pci_controller*) ;
 int to_pci_host_bridge (int ) ;

int cxl_pci_vphb_add(struct cxl_afu *afu)
{
 struct pci_controller *phb;
 struct device_node *vphb_dn;
 struct device *parent;
 if (!afu->crs_num)
  return 0;
 parent = afu->adapter->dev.parent;
 vphb_dn = parent->of_node;


 phb = pcibios_alloc_controller(vphb_dn);
 if (!phb)
  return -ENODEV;


 phb->parent = parent;


 phb->ops = &cxl_pcie_pci_ops;
 phb->cfg_addr = ((void*)0);
 phb->cfg_data = ((void*)0);
 phb->private_data = afu;
 phb->controller_ops = cxl_pci_controller_ops;


 pcibios_scan_phb(phb);
 if (phb->bus == ((void*)0))
  return -ENXIO;


 pci_set_host_bridge_release(to_pci_host_bridge(phb->bus->bridge),
        pcibios_free_controller_deferred,
        (void *) phb);





 pcibios_claim_one_bus(phb->bus);


 pci_bus_add_devices(phb->bus);

 afu->phb = phb;

 return 0;
}
