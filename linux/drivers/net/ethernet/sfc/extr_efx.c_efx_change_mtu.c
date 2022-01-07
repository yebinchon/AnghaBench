
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;
struct efx_nic {int mac_lock; int net_dev; } ;


 int drv ;
 int efx_check_disabled (struct efx_nic*) ;
 int efx_device_attach_if_not_resetting (struct efx_nic*) ;
 int efx_device_detach_sync (struct efx_nic*) ;
 int efx_mac_reconfigure (struct efx_nic*) ;
 int efx_start_all (struct efx_nic*) ;
 int efx_stop_all (struct efx_nic*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct efx_nic* netdev_priv (struct net_device*) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*,int) ;

__attribute__((used)) static int efx_change_mtu(struct net_device *net_dev, int new_mtu)
{
 struct efx_nic *efx = netdev_priv(net_dev);
 int rc;

 rc = efx_check_disabled(efx);
 if (rc)
  return rc;

 netif_dbg(efx, drv, efx->net_dev, "changing MTU to %d\n", new_mtu);

 efx_device_detach_sync(efx);
 efx_stop_all(efx);

 mutex_lock(&efx->mac_lock);
 net_dev->mtu = new_mtu;
 efx_mac_reconfigure(efx);
 mutex_unlock(&efx->mac_lock);

 efx_start_all(efx);
 efx_device_attach_if_not_resetting(efx);
 return 0;
}
