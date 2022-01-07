
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int interface; } ;
struct phylink {scalar_t__ link_an_mode; int link_irq; scalar_t__ sfp_bus; scalar_t__ phydev; int link_poll; scalar_t__ get_fixed_state; scalar_t__ link_gpio; int phylink_disable_state; TYPE_1__ link_config; scalar_t__ netdev; } ;


 int ASSERT_RTNL () ;
 scalar_t__ HZ ;
 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 scalar_t__ MLO_AN_FIXED ;
 int PHYLINK_DISABLE_STOPPED ;
 int clear_bit (int ,int *) ;
 int gpiod_to_irq (scalar_t__) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int netif_carrier_off (scalar_t__) ;
 int phy_modes (int ) ;
 int phy_start (scalar_t__) ;
 int phylink_an_mode_str (scalar_t__) ;
 int phylink_info (struct phylink*,char*,int ,int ) ;
 int phylink_link_handler ;
 int phylink_mac_an_restart (struct phylink*) ;
 int phylink_mac_config (struct phylink*,TYPE_1__*) ;
 int phylink_resolve_flow (struct phylink*,TYPE_1__*) ;
 int phylink_run_resolve (struct phylink*) ;
 int request_irq (int,int ,int,char*,struct phylink*) ;
 int sfp_upstream_start (scalar_t__) ;

void phylink_start(struct phylink *pl)
{
 ASSERT_RTNL();

 phylink_info(pl, "configuring for %s/%s link mode\n",
       phylink_an_mode_str(pl->link_an_mode),
       phy_modes(pl->link_config.interface));


 if (pl->netdev)
  netif_carrier_off(pl->netdev);





 phylink_resolve_flow(pl, &pl->link_config);
 phylink_mac_config(pl, &pl->link_config);





 phylink_mac_an_restart(pl);

 clear_bit(PHYLINK_DISABLE_STOPPED, &pl->phylink_disable_state);
 phylink_run_resolve(pl);

 if (pl->link_an_mode == MLO_AN_FIXED && pl->link_gpio) {
  int irq = gpiod_to_irq(pl->link_gpio);

  if (irq > 0) {
   if (!request_irq(irq, phylink_link_handler,
      IRQF_TRIGGER_RISING |
      IRQF_TRIGGER_FALLING,
      "netdev link", pl))
    pl->link_irq = irq;
   else
    irq = 0;
  }
  if (irq <= 0)
   mod_timer(&pl->link_poll, jiffies + HZ);
 }
 if (pl->link_an_mode == MLO_AN_FIXED && pl->get_fixed_state)
  mod_timer(&pl->link_poll, jiffies + HZ);
 if (pl->phydev)
  phy_start(pl->phydev);
 if (pl->sfp_bus)
  sfp_upstream_start(pl->sfp_bus);
}
