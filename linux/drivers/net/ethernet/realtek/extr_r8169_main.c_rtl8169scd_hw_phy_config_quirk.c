
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {struct pci_dev* pci_dev; } ;
struct pci_dev {scalar_t__ subsystem_vendor; int subsystem_device; } ;


 scalar_t__ PCI_VENDOR_ID_GIGABYTE ;
 int rtl_writephy (struct rtl8169_private*,int,int) ;

__attribute__((used)) static void rtl8169scd_hw_phy_config_quirk(struct rtl8169_private *tp)
{
 struct pci_dev *pdev = tp->pci_dev;

 if ((pdev->subsystem_vendor != PCI_VENDOR_ID_GIGABYTE) ||
     (pdev->subsystem_device != 0xe000))
  return;

 rtl_writephy(tp, 0x1f, 0x0001);
 rtl_writephy(tp, 0x10, 0xf01b);
 rtl_writephy(tp, 0x1f, 0x0000);
}
