
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_4__ {int duplex; int speed; } ;
struct ethtool_link_ksettings {TYPE_2__ base; } ;
struct ef4_link_state {scalar_t__ fd; int speed; } ;
struct ef4_nic {int mac_lock; TYPE_1__* phy_op; struct ef4_link_state link_state; } ;
struct TYPE_3__ {int (* get_link_ksettings ) (struct ef4_nic*,struct ethtool_link_ksettings*) ;} ;


 int Asym_Pause ;
 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 scalar_t__ LOOPBACK_INTERNAL (struct ef4_nic*) ;
 int Pause ;
 int ethtool_link_ksettings_add_link_mode (struct ethtool_link_ksettings*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ef4_nic* netdev_priv (struct net_device*) ;
 int stub1 (struct ef4_nic*,struct ethtool_link_ksettings*) ;
 int supported ;

__attribute__((used)) static int
ef4_ethtool_get_link_ksettings(struct net_device *net_dev,
          struct ethtool_link_ksettings *cmd)
{
 struct ef4_nic *efx = netdev_priv(net_dev);
 struct ef4_link_state *link_state = &efx->link_state;

 mutex_lock(&efx->mac_lock);
 efx->phy_op->get_link_ksettings(efx, cmd);
 mutex_unlock(&efx->mac_lock);


 ethtool_link_ksettings_add_link_mode(cmd, supported, Pause);
 ethtool_link_ksettings_add_link_mode(cmd, supported, Asym_Pause);

 if (LOOPBACK_INTERNAL(efx)) {
  cmd->base.speed = link_state->speed;
  cmd->base.duplex = link_state->fd ? DUPLEX_FULL : DUPLEX_HALF;
 }

 return 0;
}
