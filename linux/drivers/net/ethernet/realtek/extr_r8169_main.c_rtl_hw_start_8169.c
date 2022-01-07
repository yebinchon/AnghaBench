
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {scalar_t__ mac_version; int cp_cmd; int dev; int pci_dev; } ;


 int CPlusCmd ;
 int EarlyTxThres ;
 int IntrMitigate ;
 int NoEarlyTx ;
 int PCIMulRW ;
 int PCI_CACHE_LINE_SIZE ;
 scalar_t__ RTL_GIGA_MAC_VER_02 ;
 scalar_t__ RTL_GIGA_MAC_VER_03 ;
 scalar_t__ RTL_GIGA_MAC_VER_05 ;
 int RTL_W16 (struct rtl8169_private*,int ,int) ;
 int RTL_W32 (struct rtl8169_private*,int ,int ) ;
 int RTL_W8 (struct rtl8169_private*,int ,int ) ;
 int RxMissed ;
 int drv ;
 int netif_dbg (struct rtl8169_private*,int ,int ,char*) ;
 int pci_write_config_byte (int ,int ,int) ;
 int rtl8169_set_magic_reg (struct rtl8169_private*,scalar_t__) ;

__attribute__((used)) static void rtl_hw_start_8169(struct rtl8169_private *tp)
{
 if (tp->mac_version == RTL_GIGA_MAC_VER_05)
  pci_write_config_byte(tp->pci_dev, PCI_CACHE_LINE_SIZE, 0x08);

 RTL_W8(tp, EarlyTxThres, NoEarlyTx);

 tp->cp_cmd |= PCIMulRW;

 if (tp->mac_version == RTL_GIGA_MAC_VER_02 ||
     tp->mac_version == RTL_GIGA_MAC_VER_03) {
  netif_dbg(tp, drv, tp->dev,
     "Set MAC Reg C+CR Offset 0xe0. Bit 3 and Bit 14 MUST be 1\n");
  tp->cp_cmd |= (1 << 14);
 }

 RTL_W16(tp, CPlusCmd, tp->cp_cmd);

 rtl8169_set_magic_reg(tp, tp->mac_version);

 RTL_W32(tp, RxMissed, 0);


 RTL_W16(tp, IntrMitigate, 0x0000);
}
