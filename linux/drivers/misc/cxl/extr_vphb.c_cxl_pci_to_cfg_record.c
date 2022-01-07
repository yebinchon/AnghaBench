
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int devfn; TYPE_1__* bus; } ;
struct TYPE_2__ {int number; } ;


 unsigned int cxl_pcie_cfg_record (int ,int ) ;

unsigned int cxl_pci_to_cfg_record(struct pci_dev *dev)
{
 return cxl_pcie_cfg_record(dev->bus->number, dev->devfn);
}
