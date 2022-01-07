
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int ENODEV ;
 int PCI_BASE_ADDRESS_4 ;
 int PCI_BASE_ADDRESS_5 ;
 int dev_err (int *,char*) ;
 int p1_base (struct pci_dev*) ;
 int p2_base (struct pci_dev*) ;
 int pci_write_config_dword (struct pci_dev*,int ,int) ;

__attribute__((used)) static int setup_cxl_bars(struct pci_dev *dev)
{

 if ((p1_base(dev) < 0x100000000ULL) ||
     (p2_base(dev) < 0x100000000ULL)) {
  dev_err(&dev->dev, "ABORTING: M32 BAR assignment incompatible with CXL\n");
  return -ENODEV;
 }






 pci_write_config_dword(dev, PCI_BASE_ADDRESS_4, 0x00000000);
 pci_write_config_dword(dev, PCI_BASE_ADDRESS_5, 0x00020000);

 return 0;
}
