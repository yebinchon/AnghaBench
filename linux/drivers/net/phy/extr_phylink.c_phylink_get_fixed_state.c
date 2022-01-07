
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phylink_link_state {int link; } ;
struct phylink {scalar_t__ link_gpio; int netdev; int (* get_fixed_state ) (int ,struct phylink_link_state*) ;struct phylink_link_state link_config; } ;


 int gpiod_get_value_cansleep (scalar_t__) ;
 int stub1 (int ,struct phylink_link_state*) ;

__attribute__((used)) static void phylink_get_fixed_state(struct phylink *pl, struct phylink_link_state *state)
{
 *state = pl->link_config;
 if (pl->get_fixed_state)
  pl->get_fixed_state(pl->netdev, state);
 else if (pl->link_gpio)
  state->link = !!gpiod_get_value_cansleep(pl->link_gpio);
}
