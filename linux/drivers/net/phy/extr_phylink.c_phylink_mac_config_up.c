
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phylink_link_state {scalar_t__ link; } ;
struct phylink {int dummy; } ;


 int phylink_mac_config (struct phylink*,struct phylink_link_state const*) ;

__attribute__((used)) static void phylink_mac_config_up(struct phylink *pl,
      const struct phylink_link_state *state)
{
 if (state->link)
  phylink_mac_config(pl, state);
}
