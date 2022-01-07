
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;


 int BIT (int) ;
 int r8168_mac_ocp_modify (struct rtl8169_private*,int,int ,int) ;

__attribute__((used)) static void rtl8125_config_eee_mac(struct rtl8169_private *tp)
{
 r8168_mac_ocp_modify(tp, 0xe040, 0, BIT(1) | BIT(0));
 r8168_mac_ocp_modify(tp, 0xeb62, 0, BIT(2) | BIT(1));
}
