
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {scalar_t__ supports_gmii; int dev; struct phy_device* phydev; } ;
struct phy_device {int dummy; } ;
typedef int phy_interface_t ;


 int PHY_INTERFACE_MODE_GMII ;
 int PHY_INTERFACE_MODE_MII ;
 int SPEED_100 ;
 int phy_attached_info (struct phy_device*) ;
 int phy_connect_direct (int ,struct phy_device*,int ,int ) ;
 int phy_set_max_speed (struct phy_device*,int ) ;
 int phy_support_asym_pause (struct phy_device*) ;
 int r8169_phylink_handler ;

__attribute__((used)) static int r8169_phy_connect(struct rtl8169_private *tp)
{
 struct phy_device *phydev = tp->phydev;
 phy_interface_t phy_mode;
 int ret;

 phy_mode = tp->supports_gmii ? PHY_INTERFACE_MODE_GMII :
     PHY_INTERFACE_MODE_MII;

 ret = phy_connect_direct(tp->dev, phydev, r8169_phylink_handler,
     phy_mode);
 if (ret)
  return ret;

 if (!tp->supports_gmii)
  phy_set_max_speed(phydev, SPEED_100);

 phy_support_asym_pause(phydev);

 phy_attached_info(phydev);

 return 0;
}
