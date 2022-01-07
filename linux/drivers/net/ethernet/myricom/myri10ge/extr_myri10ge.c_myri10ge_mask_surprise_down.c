
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {TYPE_1__* bus; } ;
struct TYPE_2__ {struct pci_dev* self; } ;


 scalar_t__ PCI_ERR_UNCOR_MASK ;
 int PCI_EXT_CAP_ID_ERR ;
 int pci_find_ext_capability (struct pci_dev*,int ) ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int*) ;
 int pci_write_config_dword (struct pci_dev*,scalar_t__,int) ;

__attribute__((used)) static void myri10ge_mask_surprise_down(struct pci_dev *pdev)
{
 struct pci_dev *bridge = pdev->bus->self;
 int cap;
 u32 mask;

 if (bridge == ((void*)0))
  return;

 cap = pci_find_ext_capability(bridge, PCI_EXT_CAP_ID_ERR);
 if (cap) {



  pci_read_config_dword(bridge, cap + PCI_ERR_UNCOR_MASK, &mask);
  mask |= 0x20;
  pci_write_config_dword(bridge, cap + PCI_ERR_UNCOR_MASK, mask);
 }
}
