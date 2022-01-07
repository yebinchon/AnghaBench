
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phylink {scalar_t__ phydev; } ;
struct ethtool_wolinfo {int dummy; } ;


 int ASSERT_RTNL () ;
 int EOPNOTSUPP ;
 int phy_ethtool_set_wol (scalar_t__,struct ethtool_wolinfo*) ;

int phylink_ethtool_set_wol(struct phylink *pl, struct ethtool_wolinfo *wol)
{
 int ret = -EOPNOTSUPP;

 ASSERT_RTNL();

 if (pl->phydev)
  ret = phy_ethtool_set_wol(pl->phydev, wol);

 return ret;
}
