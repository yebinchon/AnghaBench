
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phylink {scalar_t__ phydev; } ;


 int ASSERT_RTNL () ;
 int phy_restart_aneg (scalar_t__) ;
 int phylink_mac_an_restart (struct phylink*) ;

int phylink_ethtool_nway_reset(struct phylink *pl)
{
 int ret = 0;

 ASSERT_RTNL();

 if (pl->phydev)
  ret = phy_restart_aneg(pl->phydev);
 phylink_mac_an_restart(pl);

 return ret;
}
