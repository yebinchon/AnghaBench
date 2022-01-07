
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pci_dev {int dummy; } ;
struct ice_pf {struct pci_dev* pdev; } ;


 int GFP_KERNEL ;
 char* ICE_DDP_PKG_PATH ;
 int NAME_MAX ;
 int PCI_EXT_CAP_ID_DSN ;
 char* kzalloc (int ,int ) ;
 int pci_find_ext_capability (struct pci_dev*,int ) ;
 int pci_read_config_dword (struct pci_dev*,int,int *) ;
 int put_unaligned_le32 (int ,int*) ;
 int snprintf (char*,int ,char*,char*,int,int,int,int,int,int,int,int) ;

__attribute__((used)) static char *ice_get_opt_fw_name(struct ice_pf *pf)
{



 struct pci_dev *pdev = pf->pdev;
 char *opt_fw_filename = ((void*)0);
 u32 dword;
 u8 dsn[8];
 int pos;




 pos = pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_DSN);
 if (pos) {
  opt_fw_filename = kzalloc(NAME_MAX, GFP_KERNEL);
  if (!opt_fw_filename)
   return ((void*)0);

  pci_read_config_dword(pdev, pos + 4, &dword);
  put_unaligned_le32(dword, &dsn[0]);
  pci_read_config_dword(pdev, pos + 8, &dword);
  put_unaligned_le32(dword, &dsn[4]);
  snprintf(opt_fw_filename, NAME_MAX,
    "%sice-%02x%02x%02x%02x%02x%02x%02x%02x.pkg",
    ICE_DDP_PKG_PATH,
    dsn[7], dsn[6], dsn[5], dsn[4],
    dsn[3], dsn[2], dsn[1], dsn[0]);
 }

 return opt_fw_filename;
}
