
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct phylink_link_state {int dummy; } ;
struct phylink {int link_an_mode; scalar_t__ phydev; int supported; int link_port; } ;
struct TYPE_4__ {int supported; } ;
struct TYPE_3__ {int port; } ;
struct ethtool_link_ksettings {TYPE_2__ link_modes; TYPE_1__ base; } ;


 int ASSERT_RTNL () ;


 int linkmode_copy (int ,int ) ;
 int phy_ethtool_ksettings_get (scalar_t__,struct ethtool_link_ksettings*) ;
 int phylink_get_fixed_state (struct phylink*,struct phylink_link_state*) ;
 int phylink_get_ksettings (struct phylink_link_state*,struct ethtool_link_ksettings*) ;
 int phylink_get_mac_state (struct phylink*,struct phylink_link_state*) ;

int phylink_ethtool_ksettings_get(struct phylink *pl,
      struct ethtool_link_ksettings *kset)
{
 struct phylink_link_state link_state;

 ASSERT_RTNL();

 if (pl->phydev) {
  phy_ethtool_ksettings_get(pl->phydev, kset);
 } else {
  kset->base.port = pl->link_port;
 }

 linkmode_copy(kset->link_modes.supported, pl->supported);

 switch (pl->link_an_mode) {
 case 129:




  phylink_get_fixed_state(pl, &link_state);
  phylink_get_ksettings(&link_state, kset);
  break;

 case 128:



  if (pl->phydev)
   break;

  phylink_get_mac_state(pl, &link_state);





  phylink_get_ksettings(&link_state, kset);
  break;
 }

 return 0;
}
