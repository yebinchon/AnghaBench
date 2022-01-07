
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct phylink_link_state {int link; scalar_t__ an_complete; int pause; int duplex; int speed; int an_enabled; int interface; int lp_advertising; int advertising; } ;
struct TYPE_4__ {int an_enabled; int interface; int advertising; } ;
struct phylink {int config; TYPE_1__* ops; TYPE_2__ link_config; } ;
struct TYPE_3__ {int (* mac_link_state ) (int ,struct phylink_link_state*) ;} ;


 int DUPLEX_UNKNOWN ;
 int MLO_PAUSE_NONE ;
 int SPEED_UNKNOWN ;
 int linkmode_copy (int ,int ) ;
 int linkmode_zero (int ) ;
 int stub1 (int ,struct phylink_link_state*) ;

__attribute__((used)) static int phylink_get_mac_state(struct phylink *pl, struct phylink_link_state *state)
{

 linkmode_copy(state->advertising, pl->link_config.advertising);
 linkmode_zero(state->lp_advertising);
 state->interface = pl->link_config.interface;
 state->an_enabled = pl->link_config.an_enabled;
 state->speed = SPEED_UNKNOWN;
 state->duplex = DUPLEX_UNKNOWN;
 state->pause = MLO_PAUSE_NONE;
 state->an_complete = 0;
 state->link = 1;

 return pl->ops->mac_link_state(pl->config, state);
}
