
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {scalar_t__ mac_version; } ;


 int EEE_LED ;
 int ERIAR_MASK_1111 ;
 scalar_t__ RTL_GIGA_MAC_VER_38 ;
 int RTL_R8 (struct rtl8169_private*,int ) ;
 int RTL_W8 (struct rtl8169_private*,int ,int) ;
 int rtl_eri_set_bits (struct rtl8169_private*,int,int ,int) ;

__attribute__((used)) static void rtl8168_config_eee_mac(struct rtl8169_private *tp)
{

 if (tp->mac_version != RTL_GIGA_MAC_VER_38)
  RTL_W8(tp, EEE_LED, RTL_R8(tp, EEE_LED) & ~0x07);

 rtl_eri_set_bits(tp, 0x1b0, ERIAR_MASK_1111, 0x0003);
}
