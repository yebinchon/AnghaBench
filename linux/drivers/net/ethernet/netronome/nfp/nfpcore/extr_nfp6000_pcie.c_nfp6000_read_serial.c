
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pci_dev {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int PCI_EXT_CAP_ID_DSN ;
 int dev_err (struct device*,char*) ;
 int pci_find_ext_capability (struct pci_dev*,int ) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int put_unaligned_be16 (int,int *) ;
 int put_unaligned_be32 (int,int *) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static int nfp6000_read_serial(struct device *dev, u8 *serial)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 int pos;
 u32 reg;

 pos = pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_DSN);
 if (!pos) {
  dev_err(dev, "can't find PCIe Serial Number Capability\n");
  return -EINVAL;
 }

 pci_read_config_dword(pdev, pos + 4, &reg);
 put_unaligned_be16(reg >> 16, serial + 4);
 pci_read_config_dword(pdev, pos + 8, &reg);
 put_unaligned_be32(reg, serial);

 return 0;
}
