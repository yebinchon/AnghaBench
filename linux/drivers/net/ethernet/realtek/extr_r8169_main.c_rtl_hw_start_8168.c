
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {scalar_t__ mac_version; int pci_dev; } ;


 int EarlySize ;
 int IntrMitigate ;
 int MaxTxPacketSize ;
 int PCI_EXP_DEVCTL ;
 int PCI_EXP_DEVCTL_NOSNOOP_EN ;
 scalar_t__ RTL_GIGA_MAC_VER_13 ;
 scalar_t__ RTL_GIGA_MAC_VER_16 ;
 int RTL_W16 (struct rtl8169_private*,int ,int) ;
 int RTL_W8 (struct rtl8169_private*,int ,int ) ;
 int TxPacketMax ;
 int pcie_capability_set_word (int ,int ,int ) ;
 int rtl_hw_config (struct rtl8169_private*) ;
 scalar_t__ rtl_is_8168evl_up (struct rtl8169_private*) ;

__attribute__((used)) static void rtl_hw_start_8168(struct rtl8169_private *tp)
{
 if (tp->mac_version == RTL_GIGA_MAC_VER_13 ||
     tp->mac_version == RTL_GIGA_MAC_VER_16)
  pcie_capability_set_word(tp->pci_dev, PCI_EXP_DEVCTL,
      PCI_EXP_DEVCTL_NOSNOOP_EN);

 if (rtl_is_8168evl_up(tp))
  RTL_W8(tp, MaxTxPacketSize, EarlySize);
 else
  RTL_W8(tp, MaxTxPacketSize, TxPacketMax);

 rtl_hw_config(tp);


 RTL_W16(tp, IntrMitigate, 0x0000);
}
