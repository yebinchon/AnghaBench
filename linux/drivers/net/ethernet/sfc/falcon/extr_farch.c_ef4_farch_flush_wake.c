
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int rxq_flush_pending; int rxq_flush_outstanding; int active_queues; } ;


 scalar_t__ EF4_RX_FLUSH_COUNT ;
 scalar_t__ atomic_read (int *) ;
 int smp_mb () ;

__attribute__((used)) static bool ef4_farch_flush_wake(struct ef4_nic *efx)
{

 smp_mb();

 return (atomic_read(&efx->active_queues) == 0 ||
  (atomic_read(&efx->rxq_flush_outstanding) < EF4_RX_FLUSH_COUNT
   && atomic_read(&efx->rxq_flush_pending) > 0));
}
