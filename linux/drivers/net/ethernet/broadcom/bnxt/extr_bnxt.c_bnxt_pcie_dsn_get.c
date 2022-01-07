
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pci_dev {int dummy; } ;
struct bnxt {int dev; struct pci_dev* pdev; } ;


 int EOPNOTSUPP ;
 int PCI_EXT_CAP_ID_DSN ;
 int netdev_info (int ,char*) ;
 int pci_find_ext_capability (struct pci_dev*,int ) ;
 int pci_read_config_dword (struct pci_dev*,int,int *) ;
 int put_unaligned_le32 (int ,int *) ;

__attribute__((used)) static int bnxt_pcie_dsn_get(struct bnxt *bp, u8 dsn[])
{
 struct pci_dev *pdev = bp->pdev;
 int pos = pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_DSN);
 u32 dw;

 if (!pos) {
  netdev_info(bp->dev, "Unable do read adapter's DSN");
  return -EOPNOTSUPP;
 }


 pos += 4;
 pci_read_config_dword(pdev, pos, &dw);
 put_unaligned_le32(dw, &dsn[0]);
 pci_read_config_dword(pdev, pos + 4, &dw);
 put_unaligned_le32(dw, &dsn[4]);
 return 0;
}
