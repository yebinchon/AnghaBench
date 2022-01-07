
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phylink {scalar_t__ phydev; } ;


 int ASSERT_RTNL () ;
 int phy_get_eee_err (scalar_t__) ;

int phylink_get_eee_err(struct phylink *pl)
{
 int ret = 0;

 ASSERT_RTNL();

 if (pl->phydev)
  ret = phy_get_eee_err(pl->phydev);

 return ret;
}
