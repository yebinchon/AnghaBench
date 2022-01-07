
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;
struct myri10ge_priv {int vendor_specific_offset; struct pci_dev* pdev; } ;


 int pci_read_config_dword (struct pci_dev*,int,int *) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 int pci_write_config_dword (struct pci_dev*,int,int) ;

__attribute__((used)) static u32 myri10ge_read_reboot(struct myri10ge_priv *mgp)
{
 struct pci_dev *pdev = mgp->pdev;
 int vs = mgp->vendor_specific_offset;
 u32 reboot;


 pci_write_config_byte(pdev, vs + 0x10, 0x3);


 pci_write_config_dword(pdev, vs + 0x18, 0xfffffff0);
 pci_read_config_dword(pdev, vs + 0x14, &reboot);
 return reboot;
}
