
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtl8169_private {int dev; struct pci_dev* pci_dev; } ;
struct pci_dev {int cfg_size; } ;


 scalar_t__ PCIBIOS_SUCCESSFUL ;
 int netdev_notice_once (int ,char*) ;
 scalar_t__ pci_write_config_byte (struct pci_dev*,int,int) ;
 int rtl_csi_read (struct rtl8169_private*,int) ;
 int rtl_csi_write (struct rtl8169_private*,int,int) ;

__attribute__((used)) static void rtl_csi_access_enable(struct rtl8169_private *tp, u8 val)
{
 struct pci_dev *pdev = tp->pci_dev;
 u32 csi;





 if (pdev->cfg_size > 0x070f &&
     pci_write_config_byte(pdev, 0x070f, val) == PCIBIOS_SUCCESSFUL)
  return;

 netdev_notice_once(tp->dev,
  "No native access to PCI extended config space, falling back to CSI\n");
 csi = rtl_csi_read(tp, 0x070c) & 0x00ffffff;
 rtl_csi_write(tp, 0x070c, csi | val << 24);
}
