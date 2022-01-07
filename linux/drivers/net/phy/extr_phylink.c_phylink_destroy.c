
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phylink {int resolve; scalar_t__ link_gpio; scalar_t__ sfp_bus; } ;


 int cancel_work_sync (int *) ;
 int gpiod_put (scalar_t__) ;
 int kfree (struct phylink*) ;
 int sfp_unregister_upstream (scalar_t__) ;

void phylink_destroy(struct phylink *pl)
{
 if (pl->sfp_bus)
  sfp_unregister_upstream(pl->sfp_bus);
 if (pl->link_gpio)
  gpiod_put(pl->link_gpio);

 cancel_work_sync(&pl->resolve);
 kfree(pl);
}
