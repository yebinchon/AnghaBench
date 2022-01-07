
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int duplex; int speed; } ;
struct TYPE_5__ {int supported; } ;
struct ethtool_link_ksettings {TYPE_3__ base; TYPE_2__ link_modes; } ;
struct efx_link_state {scalar_t__ fd; int speed; } ;
struct efx_nic {int mac_lock; TYPE_1__* phy_op; struct efx_link_state link_state; } ;
struct TYPE_4__ {int (* get_link_ksettings ) (struct efx_nic*,struct ethtool_link_ksettings*) ;} ;


 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 scalar_t__ LOOPBACK_INTERNAL (struct efx_nic*) ;
 int SUPPORTED_Asym_Pause ;
 int SUPPORTED_Pause ;
 int ethtool_convert_legacy_u32_to_link_mode (int ,int) ;
 int ethtool_convert_link_mode_to_legacy_u32 (int*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct efx_nic* netdev_priv (struct net_device*) ;
 int stub1 (struct efx_nic*,struct ethtool_link_ksettings*) ;

__attribute__((used)) static int
efx_ethtool_get_link_ksettings(struct net_device *net_dev,
          struct ethtool_link_ksettings *cmd)
{
 struct efx_nic *efx = netdev_priv(net_dev);
 struct efx_link_state *link_state = &efx->link_state;
 u32 supported;

 mutex_lock(&efx->mac_lock);
 efx->phy_op->get_link_ksettings(efx, cmd);
 mutex_unlock(&efx->mac_lock);


 ethtool_convert_link_mode_to_legacy_u32(&supported,
      cmd->link_modes.supported);

 supported |= SUPPORTED_Pause | SUPPORTED_Asym_Pause;

 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.supported,
      supported);

 if (LOOPBACK_INTERNAL(efx)) {
  cmd->base.speed = link_state->speed;
  cmd->base.duplex = link_state->fd ? DUPLEX_FULL : DUPLEX_HALF;
 }

 return 0;
}
