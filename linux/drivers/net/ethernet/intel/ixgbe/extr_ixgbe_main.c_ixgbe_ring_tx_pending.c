
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_ring {scalar_t__ next_to_use; scalar_t__ next_to_clean; } ;
struct ixgbe_adapter {int num_tx_queues; int num_xdp_queues; struct ixgbe_ring** xdp_ring; struct ixgbe_ring** tx_ring; } ;



__attribute__((used)) static bool ixgbe_ring_tx_pending(struct ixgbe_adapter *adapter)
{
 int i;

 for (i = 0; i < adapter->num_tx_queues; i++) {
  struct ixgbe_ring *tx_ring = adapter->tx_ring[i];

  if (tx_ring->next_to_use != tx_ring->next_to_clean)
   return 1;
 }

 for (i = 0; i < adapter->num_xdp_queues; i++) {
  struct ixgbe_ring *ring = adapter->xdp_ring[i];

  if (ring->next_to_use != ring->next_to_clean)
   return 1;
 }

 return 0;
}
