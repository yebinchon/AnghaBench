
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {scalar_t__ vendor; scalar_t__ device; int bus; int devfn; } ;


 int ENODEV ;
 unsigned int PCI_DEVFN (int ,int ) ;
 scalar_t__ PCI_DEVICE_ID_ENE_720 ;
 int PCI_SLOT (int ) ;
 scalar_t__ PCI_VENDOR_ID_ENE ;
 int cb710_pci_update_config_reg (struct pci_dev*,int,int,int) ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_slot (int ,unsigned int) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;

__attribute__((used)) static int cb710_pci_configure(struct pci_dev *pdev)
{
 unsigned int devfn = PCI_DEVFN(PCI_SLOT(pdev->devfn), 0);
 struct pci_dev *pdev0;
 u32 val;

 cb710_pci_update_config_reg(pdev, 0x48,
  ~0x000000FF, 0x0000003F);

 pci_read_config_dword(pdev, 0x48, &val);
 if (val & 0x80000000)
  return 0;

 pdev0 = pci_get_slot(pdev->bus, devfn);
 if (!pdev0)
  return -ENODEV;

 if (pdev0->vendor == PCI_VENDOR_ID_ENE
     && pdev0->device == PCI_DEVICE_ID_ENE_720) {
  cb710_pci_update_config_reg(pdev0, 0x8C,
   ~0x00F00000, 0x00100000);
  cb710_pci_update_config_reg(pdev0, 0xB0,
   ~0x08000000, 0x08000000);
 }

 cb710_pci_update_config_reg(pdev0, 0x8C,
  ~0x00000F00, 0x00000200);
 cb710_pci_update_config_reg(pdev0, 0x90,
  ~0x00060000, 0x00040000);

 pci_dev_put(pdev0);

 return 0;
}
