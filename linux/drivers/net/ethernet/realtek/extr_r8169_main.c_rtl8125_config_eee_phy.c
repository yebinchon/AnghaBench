
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {struct phy_device* phydev; } ;
struct phy_device {int dummy; } ;


 int phy_modify_paged (struct phy_device*,int,int,int,int) ;
 int rtl8168h_config_eee_phy (struct rtl8169_private*) ;

__attribute__((used)) static void rtl8125_config_eee_phy(struct rtl8169_private *tp)
{
 struct phy_device *phydev = tp->phydev;

 rtl8168h_config_eee_phy(tp);

 phy_modify_paged(phydev, 0xa6d, 0x12, 0x0001, 0x0000);
 phy_modify_paged(phydev, 0xa6d, 0x14, 0x0010, 0x0000);
}
