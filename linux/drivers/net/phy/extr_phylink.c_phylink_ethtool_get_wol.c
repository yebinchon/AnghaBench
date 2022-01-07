
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phylink {scalar_t__ phydev; } ;
struct ethtool_wolinfo {scalar_t__ wolopts; scalar_t__ supported; } ;


 int ASSERT_RTNL () ;
 int phy_ethtool_get_wol (scalar_t__,struct ethtool_wolinfo*) ;

void phylink_ethtool_get_wol(struct phylink *pl, struct ethtool_wolinfo *wol)
{
 ASSERT_RTNL();

 wol->supported = 0;
 wol->wolopts = 0;

 if (pl->phydev)
  phy_ethtool_get_wol(pl->phydev, wol);
}
