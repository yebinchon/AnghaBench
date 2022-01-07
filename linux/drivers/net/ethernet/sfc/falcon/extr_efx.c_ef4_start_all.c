
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ef4_nic {scalar_t__ state; int stats_lock; TYPE_1__* type; int monitor_work; int workqueue; scalar_t__ reset_pending; int net_dev; scalar_t__ port_enabled; } ;
struct TYPE_2__ {int (* update_stats ) (struct ef4_nic*,int *,int *) ;int (* pull_stats ) (struct ef4_nic*) ;int (* start_stats ) (struct ef4_nic*) ;int * monitor; } ;


 int BUG_ON (int) ;
 int EF4_ASSERT_RESET_SERIALISED (struct ef4_nic*) ;
 scalar_t__ STATE_DISABLED ;
 int ef4_monitor_interval ;
 int ef4_start_datapath (struct ef4_nic*) ;
 int ef4_start_port (struct ef4_nic*) ;
 int netif_running (int ) ;
 int queue_delayed_work (int ,int *,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct ef4_nic*) ;
 int stub2 (struct ef4_nic*) ;
 int stub3 (struct ef4_nic*,int *,int *) ;

__attribute__((used)) static void ef4_start_all(struct ef4_nic *efx)
{
 EF4_ASSERT_RESET_SERIALISED(efx);
 BUG_ON(efx->state == STATE_DISABLED);



 if (efx->port_enabled || !netif_running(efx->net_dev) ||
     efx->reset_pending)
  return;

 ef4_start_port(efx);
 ef4_start_datapath(efx);


 if (efx->type->monitor != ((void*)0))
  queue_delayed_work(efx->workqueue, &efx->monitor_work,
       ef4_monitor_interval);

 efx->type->start_stats(efx);
 efx->type->pull_stats(efx);
 spin_lock_bh(&efx->stats_lock);
 efx->type->update_stats(efx, ((void*)0), ((void*)0));
 spin_unlock_bh(&efx->stats_lock);
}
