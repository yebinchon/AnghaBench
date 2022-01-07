
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ speed; scalar_t__ duplex; } ;
struct ethtool_link_ksettings {TYPE_2__ base; } ;
struct efx_nic {int mac_lock; TYPE_1__* phy_op; int net_dev; } ;
struct TYPE_3__ {int (* set_link_ksettings ) (struct efx_nic*,struct ethtool_link_ksettings const*) ;} ;


 scalar_t__ DUPLEX_FULL ;
 int EINVAL ;
 scalar_t__ SPEED_1000 ;
 int drv ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct efx_nic* netdev_priv (struct net_device*) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*) ;
 int stub1 (struct efx_nic*,struct ethtool_link_ksettings const*) ;

__attribute__((used)) static int
efx_ethtool_set_link_ksettings(struct net_device *net_dev,
          const struct ethtool_link_ksettings *cmd)
{
 struct efx_nic *efx = netdev_priv(net_dev);
 int rc;


 if ((cmd->base.speed == SPEED_1000) &&
     (cmd->base.duplex != DUPLEX_FULL)) {
  netif_dbg(efx, drv, efx->net_dev,
     "rejecting unsupported 1000Mbps HD setting\n");
  return -EINVAL;
 }

 mutex_lock(&efx->mac_lock);
 rc = efx->phy_op->set_link_ksettings(efx, cmd);
 mutex_unlock(&efx->mac_lock);
 return rc;
}
