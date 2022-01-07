
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40e_pf {int dummy; } ;
struct i40e_hw {int dummy; } ;
struct TYPE_2__ {int duplex; int speed; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;


 int DUPLEX_UNKNOWN ;
 int SPEED_UNKNOWN ;
 int i40e_phy_type_to_ethtool (struct i40e_pf*,struct ethtool_link_ksettings*) ;

__attribute__((used)) static void i40e_get_settings_link_down(struct i40e_hw *hw,
     struct ethtool_link_ksettings *ks,
     struct i40e_pf *pf)
{



 i40e_phy_type_to_ethtool(pf, ks);


 ks->base.speed = SPEED_UNKNOWN;
 ks->base.duplex = DUPLEX_UNKNOWN;
}
