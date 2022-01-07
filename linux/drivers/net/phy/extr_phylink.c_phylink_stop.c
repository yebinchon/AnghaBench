
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phylink {scalar_t__ link_irq; int link_poll; scalar_t__ phydev; scalar_t__ sfp_bus; } ;


 int ASSERT_RTNL () ;
 int PHYLINK_DISABLE_STOPPED ;
 int del_timer_sync (int *) ;
 int free_irq (scalar_t__,struct phylink*) ;
 int phy_stop (scalar_t__) ;
 int phylink_run_resolve_and_disable (struct phylink*,int ) ;
 int sfp_upstream_stop (scalar_t__) ;

void phylink_stop(struct phylink *pl)
{
 ASSERT_RTNL();

 if (pl->sfp_bus)
  sfp_upstream_stop(pl->sfp_bus);
 if (pl->phydev)
  phy_stop(pl->phydev);
 del_timer_sync(&pl->link_poll);
 if (pl->link_irq) {
  free_irq(pl->link_irq, pl);
  pl->link_irq = 0;
 }

 phylink_run_resolve_and_disable(pl, PHYLINK_DISABLE_STOPPED);
}
