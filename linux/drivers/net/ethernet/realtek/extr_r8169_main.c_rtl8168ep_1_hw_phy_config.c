
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int phydev; } ;


 int BIT (int) ;
 int phy_modify_paged (int ,int,int,int,int) ;
 int rtl8168g_config_eee_phy (struct rtl8169_private*) ;
 int rtl8168g_disable_aldps (struct rtl8169_private*) ;
 int rtl8168g_phy_adjust_10m_aldps (struct rtl8169_private*) ;
 int rtl_enable_eee (struct rtl8169_private*) ;
 int rtl_w0w1_phy (struct rtl8169_private*,int,int,int) ;
 int rtl_writephy (struct rtl8169_private*,int,int) ;

__attribute__((used)) static void rtl8168ep_1_hw_phy_config(struct rtl8169_private *tp)
{

 phy_modify_paged(tp->phydev, 0x0a44, 0x11, 0, BIT(3) | BIT(2));

 rtl8168g_phy_adjust_10m_aldps(tp);


 phy_modify_paged(tp->phydev, 0x0a4b, 0x11, 0, BIT(2));


 rtl_writephy(tp, 0x1f, 0x0a43);
 rtl_writephy(tp, 0x13, 0x8012);
 rtl_w0w1_phy(tp, 0x14, 0x8000, 0x0000);
 rtl_writephy(tp, 0x1f, 0x0000);


 phy_modify_paged(tp->phydev, 0x0c42, 0x11, BIT(13), BIT(14));

 rtl8168g_disable_aldps(tp);
 rtl8168g_config_eee_phy(tp);
 rtl_enable_eee(tp);
}
