
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int active_queues; int rxq_flush_outstanding; int rxq_flush_pending; } ;


 int atomic_set (int *,int ) ;

void efx_farch_finish_flr(struct efx_nic *efx)
{
 atomic_set(&efx->rxq_flush_pending, 0);
 atomic_set(&efx->rxq_flush_outstanding, 0);
 atomic_set(&efx->active_queues, 0);
}
