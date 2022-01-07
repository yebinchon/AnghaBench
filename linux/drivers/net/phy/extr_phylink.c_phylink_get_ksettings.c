
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct phylink_link_state {scalar_t__ an_enabled; int duplex; int speed; int lp_advertising; int advertising; } ;
struct TYPE_4__ {int autoneg; int duplex; int speed; } ;
struct TYPE_3__ {int lp_advertising; int advertising; } ;
struct ethtool_link_ksettings {TYPE_2__ base; TYPE_1__ link_modes; } ;


 int AUTONEG_DISABLE ;
 int AUTONEG_ENABLE ;
 int linkmode_copy (int ,int ) ;
 int phylink_merge_link_mode (int ,int ) ;

__attribute__((used)) static void phylink_get_ksettings(const struct phylink_link_state *state,
      struct ethtool_link_ksettings *kset)
{
 phylink_merge_link_mode(kset->link_modes.advertising, state->advertising);
 linkmode_copy(kset->link_modes.lp_advertising, state->lp_advertising);
 kset->base.speed = state->speed;
 kset->base.duplex = state->duplex;
 kset->base.autoneg = state->an_enabled ? AUTONEG_ENABLE :
    AUTONEG_DISABLE;
}
