
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {struct phy_device* phydev; } ;
struct phy_device {int dummy; } ;


 int BIT (int) ;
 int phy_clear_bits (struct phy_device*,int,int) ;
 int phy_modify_paged (struct phy_device*,int,int,int,int) ;
 int phy_set_bits (struct phy_device*,int,int) ;
 int phy_write (struct phy_device*,int,int) ;

__attribute__((used)) static void rtl8168g_phy_adjust_10m_aldps(struct rtl8169_private *tp)
{
 struct phy_device *phydev = tp->phydev;

 phy_modify_paged(phydev, 0x0bcc, 0x14, BIT(8), 0);
 phy_modify_paged(phydev, 0x0a44, 0x11, 0, BIT(7) | BIT(6));
 phy_write(phydev, 0x1f, 0x0a43);
 phy_write(phydev, 0x13, 0x8084);
 phy_clear_bits(phydev, 0x14, BIT(14) | BIT(13));
 phy_set_bits(phydev, 0x10, BIT(12) | BIT(1) | BIT(0));

 phy_write(phydev, 0x1f, 0x0000);
}
