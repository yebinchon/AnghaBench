
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;


 int rtl8168g_config_eee_phy (struct rtl8169_private*) ;
 int rtl_apply_firmware (struct rtl8169_private*) ;
 int rtl_enable_eee (struct rtl8169_private*) ;

__attribute__((used)) static void rtl8168g_2_hw_phy_config(struct rtl8169_private *tp)
{
 rtl_apply_firmware(tp);
 rtl8168g_config_eee_phy(tp);
 rtl_enable_eee(tp);
}
