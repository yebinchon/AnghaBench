
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ef4_nic {int net_dev; TYPE_1__* type; int stats_lock; int port_enabled; } ;
struct TYPE_2__ {int (* stop_stats ) (struct ef4_nic*) ;int (* update_stats ) (struct ef4_nic*,int *,int *) ;int (* pull_stats ) (struct ef4_nic*) ;} ;


 int EF4_ASSERT_RESET_SERIALISED (struct ef4_nic*) ;
 int WARN_ON (int) ;
 int ef4_stop_datapath (struct ef4_nic*) ;
 int ef4_stop_port (struct ef4_nic*) ;
 scalar_t__ netif_device_present (int ) ;
 scalar_t__ netif_running (int ) ;
 int netif_tx_disable (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct ef4_nic*) ;
 int stub2 (struct ef4_nic*,int *,int *) ;
 int stub3 (struct ef4_nic*) ;

__attribute__((used)) static void ef4_stop_all(struct ef4_nic *efx)
{
 EF4_ASSERT_RESET_SERIALISED(efx);


 if (!efx->port_enabled)
  return;




 efx->type->pull_stats(efx);
 spin_lock_bh(&efx->stats_lock);
 efx->type->update_stats(efx, ((void*)0), ((void*)0));
 spin_unlock_bh(&efx->stats_lock);
 efx->type->stop_stats(efx);
 ef4_stop_port(efx);





 WARN_ON(netif_running(efx->net_dev) &&
  netif_device_present(efx->net_dev));
 netif_tx_disable(efx->net_dev);

 ef4_stop_datapath(efx);
}
