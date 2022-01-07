
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int flush_wq; int active_queues; } ;
struct ef4_channel {struct ef4_nic* efx; } ;


 int WARN_ON (int) ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ ef4_farch_flush_wake (struct ef4_nic*) ;
 int wake_up (int *) ;

__attribute__((used)) static void
ef4_farch_handle_drain_event(struct ef4_channel *channel)
{
 struct ef4_nic *efx = channel->efx;

 WARN_ON(atomic_read(&efx->active_queues) == 0);
 atomic_dec(&efx->active_queues);
 if (ef4_farch_flush_wake(efx))
  wake_up(&efx->flush_wq);
}
