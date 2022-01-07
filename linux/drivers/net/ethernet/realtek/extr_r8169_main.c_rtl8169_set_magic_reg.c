
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8169_private {scalar_t__ mac_version; } ;


 int Config2 ;
 int PCI_Clock_66MHz ;
 scalar_t__ RTL_GIGA_MAC_VER_05 ;
 scalar_t__ RTL_GIGA_MAC_VER_06 ;
 int RTL_R8 (struct rtl8169_private*,int ) ;
 int RTL_W32 (struct rtl8169_private*,int,int) ;

__attribute__((used)) static void rtl8169_set_magic_reg(struct rtl8169_private *tp, unsigned mac_version)
{
 u32 val;

 if (tp->mac_version == RTL_GIGA_MAC_VER_05)
  val = 0x000fff00;
 else if (tp->mac_version == RTL_GIGA_MAC_VER_06)
  val = 0x00ffff00;
 else
  return;

 if (RTL_R8(tp, Config2) & PCI_Clock_66MHz)
  val |= 0xff;

 RTL_W32(tp, 0x7c, val);
}
