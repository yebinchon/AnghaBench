
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phylink {scalar_t__ phydev; } ;


 int EOPNOTSUPP ;
 int phy_init_eee (scalar_t__,int) ;

int phylink_init_eee(struct phylink *pl, bool clk_stop_enable)
{
 int ret = -EOPNOTSUPP;

 if (pl->phydev)
  ret = phy_init_eee(pl->phydev, clk_stop_enable);

 return ret;
}
