
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int restart_q; } ;
struct ice_ring {TYPE_1__ tx_stats; int q_index; int netdev; } ;


 int EBUSY ;
 unsigned int ICE_DESC_UNUSED (struct ice_ring*) ;
 scalar_t__ likely (int) ;
 int netif_start_subqueue (int ,int ) ;
 int netif_stop_subqueue (int ,int ) ;
 int smp_mb () ;

__attribute__((used)) static int __ice_maybe_stop_tx(struct ice_ring *tx_ring, unsigned int size)
{
 netif_stop_subqueue(tx_ring->netdev, tx_ring->q_index);

 smp_mb();


 if (likely(ICE_DESC_UNUSED(tx_ring) < size))
  return -EBUSY;


 netif_start_subqueue(tx_ring->netdev, tx_ring->q_index);
 ++tx_ring->tx_stats.restart_q;
 return 0;
}
