
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int active_queues; int flush_wq; } ;


 int WARN_ON (int) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 int wake_up (int *) ;

void efx_ef10_handle_drain_event(struct efx_nic *efx)
{
 if (atomic_dec_and_test(&efx->active_queues))
  wake_up(&efx->flush_wq);

 WARN_ON(atomic_read(&efx->active_queues) < 0);
}
