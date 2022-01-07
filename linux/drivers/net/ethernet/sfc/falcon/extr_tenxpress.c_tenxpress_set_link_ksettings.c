
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int autoneg; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;
struct ef4_nic {int dummy; } ;


 int EINVAL ;
 int ef4_mdio_set_link_ksettings (struct ef4_nic*,struct ethtool_link_ksettings const*) ;

__attribute__((used)) static int
tenxpress_set_link_ksettings(struct ef4_nic *efx,
        const struct ethtool_link_ksettings *cmd)
{
 if (!cmd->base.autoneg)
  return -EINVAL;

 return ef4_mdio_set_link_ksettings(efx, cmd);
}
