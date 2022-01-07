
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int restart_queue; } ;
struct i40e_ring {TYPE_1__ tx_stats; int queue_index; int netdev; } ;


 int EBUSY ;
 int I40E_DESC_UNUSED (struct i40e_ring*) ;
 scalar_t__ likely (int) ;
 int netif_start_subqueue (int ,int ) ;
 int netif_stop_subqueue (int ,int ) ;
 int smp_mb () ;

int __i40e_maybe_stop_tx(struct i40e_ring *tx_ring, int size)
{
 netif_stop_subqueue(tx_ring->netdev, tx_ring->queue_index);

 smp_mb();


 if (likely(I40E_DESC_UNUSED(tx_ring) < size))
  return -EBUSY;


 netif_start_subqueue(tx_ring->netdev, tx_ring->queue_index);
 ++tx_ring->tx_stats.restart_queue;
 return 0;
}
