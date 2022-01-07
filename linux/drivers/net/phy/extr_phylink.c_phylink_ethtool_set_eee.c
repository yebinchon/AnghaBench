
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phylink {scalar_t__ phydev; } ;
struct ethtool_eee {int dummy; } ;


 int ASSERT_RTNL () ;
 int EOPNOTSUPP ;
 int phy_ethtool_set_eee (scalar_t__,struct ethtool_eee*) ;

int phylink_ethtool_set_eee(struct phylink *pl, struct ethtool_eee *eee)
{
 int ret = -EOPNOTSUPP;

 ASSERT_RTNL();

 if (pl->phydev)
  ret = phy_ethtool_set_eee(pl->phydev, eee);

 return ret;
}
