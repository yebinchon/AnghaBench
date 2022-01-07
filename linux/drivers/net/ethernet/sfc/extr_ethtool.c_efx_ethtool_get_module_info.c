
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_modinfo {int dummy; } ;
struct efx_nic {int mac_lock; TYPE_1__* phy_op; } ;
struct TYPE_2__ {int (* get_module_info ) (struct efx_nic*,struct ethtool_modinfo*) ;} ;


 int EOPNOTSUPP ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct efx_nic* netdev_priv (struct net_device*) ;
 int stub1 (struct efx_nic*,struct ethtool_modinfo*) ;

__attribute__((used)) static int efx_ethtool_get_module_info(struct net_device *net_dev,
           struct ethtool_modinfo *modinfo)
{
 struct efx_nic *efx = netdev_priv(net_dev);
 int ret;

 if (!efx->phy_op || !efx->phy_op->get_module_info)
  return -EOPNOTSUPP;

 mutex_lock(&efx->mac_lock);
 ret = efx->phy_op->get_module_info(efx, modinfo);
 mutex_unlock(&efx->mac_lock);

 return ret;
}
