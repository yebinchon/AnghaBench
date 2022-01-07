
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {scalar_t__ mac_version; int phydev; int pci_dev; } ;
struct net_device {int dummy; } ;


 int PCI_CACHE_LINE_SIZE ;
 int PCI_LATENCY_TIMER ;
 scalar_t__ RTL_GIGA_MAC_VER_06 ;
 int RTL_W8 (struct rtl8169_private*,int,int) ;
 int drv ;
 int genphy_soft_reset (int ) ;
 int netif_dbg (struct rtl8169_private*,int ,struct net_device*,char*) ;
 int pci_write_config_byte (int ,int ,int) ;
 int phy_speed_up (int ) ;
 int rtl_hw_phy_config (struct net_device*) ;

__attribute__((used)) static void rtl8169_init_phy(struct net_device *dev, struct rtl8169_private *tp)
{
 rtl_hw_phy_config(dev);

 if (tp->mac_version <= RTL_GIGA_MAC_VER_06) {
  pci_write_config_byte(tp->pci_dev, PCI_LATENCY_TIMER, 0x40);
  pci_write_config_byte(tp->pci_dev, PCI_CACHE_LINE_SIZE, 0x08);
  netif_dbg(tp, drv, dev,
     "Set MAC Reg C+CR Offset 0x82h = 0x01h\n");
  RTL_W8(tp, 0x82, 0x01);
 }


 phy_speed_up(tp->phydev);

 genphy_soft_reset(tp->phydev);
}
