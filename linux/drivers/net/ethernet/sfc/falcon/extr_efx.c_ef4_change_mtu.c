
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;
struct ef4_nic {int net_dev; int mac_lock; } ;


 int drv ;
 int ef4_check_disabled (struct ef4_nic*) ;
 int ef4_device_detach_sync (struct ef4_nic*) ;
 int ef4_mac_reconfigure (struct ef4_nic*) ;
 int ef4_start_all (struct ef4_nic*) ;
 int ef4_stop_all (struct ef4_nic*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ef4_nic* netdev_priv (struct net_device*) ;
 int netif_dbg (struct ef4_nic*,int ,int ,char*,int) ;
 int netif_device_attach (int ) ;

__attribute__((used)) static int ef4_change_mtu(struct net_device *net_dev, int new_mtu)
{
 struct ef4_nic *efx = netdev_priv(net_dev);
 int rc;

 rc = ef4_check_disabled(efx);
 if (rc)
  return rc;

 netif_dbg(efx, drv, efx->net_dev, "changing MTU to %d\n", new_mtu);

 ef4_device_detach_sync(efx);
 ef4_stop_all(efx);

 mutex_lock(&efx->mac_lock);
 net_dev->mtu = new_mtu;
 ef4_mac_reconfigure(efx);
 mutex_unlock(&efx->mac_lock);

 ef4_start_all(efx);
 netif_device_attach(efx->net_dev);
 return 0;
}
