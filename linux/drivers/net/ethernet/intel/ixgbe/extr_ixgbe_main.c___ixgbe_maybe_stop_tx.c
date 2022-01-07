
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {int restart_queue; } ;
struct ixgbe_ring {TYPE_1__ tx_stats; int queue_index; int netdev; } ;


 int EBUSY ;
 scalar_t__ ixgbe_desc_unused (struct ixgbe_ring*) ;
 scalar_t__ likely (int) ;
 int netif_start_subqueue (int ,int ) ;
 int netif_stop_subqueue (int ,int ) ;
 int smp_mb () ;

__attribute__((used)) static int __ixgbe_maybe_stop_tx(struct ixgbe_ring *tx_ring, u16 size)
{
 netif_stop_subqueue(tx_ring->netdev, tx_ring->queue_index);





 smp_mb();




 if (likely(ixgbe_desc_unused(tx_ring) < size))
  return -EBUSY;


 netif_start_subqueue(tx_ring->netdev, tx_ring->queue_index);
 ++tx_ring->tx_stats.restart_queue;
 return 0;
}
