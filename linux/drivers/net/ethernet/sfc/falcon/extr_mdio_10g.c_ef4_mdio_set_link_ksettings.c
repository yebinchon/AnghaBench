
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {scalar_t__ speed; scalar_t__ duplex; scalar_t__ port; scalar_t__ autoneg; int cmd; } ;
struct TYPE_5__ {int supported; int advertising; } ;
struct ethtool_link_ksettings {TYPE_3__ base; TYPE_2__ link_modes; } ;
struct ef4_nic {TYPE_1__* phy_op; } ;
struct TYPE_4__ {int (* get_link_ksettings ) (struct ef4_nic*,struct ethtool_link_ksettings*) ;} ;


 int ADVERTISED_Autoneg ;
 int EINVAL ;
 int ETHTOOL_GLINKSETTINGS ;
 scalar_t__ PORT_TP ;
 int SUPPORTED_Autoneg ;
 int ef4_link_set_advertising (struct ef4_nic*,int) ;
 int ef4_mdio_an_reconfigure (struct ef4_nic*) ;
 int ethtool_convert_link_mode_to_legacy_u32 (int*,int ) ;
 int stub1 (struct ef4_nic*,struct ethtool_link_ksettings*) ;

int ef4_mdio_set_link_ksettings(struct ef4_nic *efx,
    const struct ethtool_link_ksettings *cmd)
{
 struct ethtool_link_ksettings prev = {
  .base.cmd = ETHTOOL_GLINKSETTINGS
 };
 u32 prev_advertising, advertising;
 u32 prev_supported;

 efx->phy_op->get_link_ksettings(efx, &prev);

 ethtool_convert_link_mode_to_legacy_u32(&advertising,
      cmd->link_modes.advertising);
 ethtool_convert_link_mode_to_legacy_u32(&prev_advertising,
      prev.link_modes.advertising);
 ethtool_convert_link_mode_to_legacy_u32(&prev_supported,
      prev.link_modes.supported);

 if (advertising == prev_advertising &&
     cmd->base.speed == prev.base.speed &&
     cmd->base.duplex == prev.base.duplex &&
     cmd->base.port == prev.base.port &&
     cmd->base.autoneg == prev.base.autoneg)
  return 0;


 if (prev.base.port != PORT_TP || cmd->base.port != PORT_TP)
  return -EINVAL;


 if (!cmd->base.autoneg ||
     (advertising | SUPPORTED_Autoneg) & ~prev_supported)
  return -EINVAL;

 ef4_link_set_advertising(efx, advertising | ADVERTISED_Autoneg);
 ef4_mdio_an_reconfigure(efx);
 return 0;
}
