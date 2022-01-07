
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int port_enabled; int mac_lock; int net_dev; } ;


 int BUG_ON (int) ;
 int ef4_mac_reconfigure (struct ef4_nic*) ;
 int ifup ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netif_dbg (struct ef4_nic*,int ,int ,char*) ;

__attribute__((used)) static void ef4_start_port(struct ef4_nic *efx)
{
 netif_dbg(efx, ifup, efx->net_dev, "start port\n");
 BUG_ON(efx->port_enabled);

 mutex_lock(&efx->mac_lock);
 efx->port_enabled = 1;


 ef4_mac_reconfigure(efx);

 mutex_unlock(&efx->mac_lock);
}
