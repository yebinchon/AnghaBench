
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_ring {scalar_t__ next_to_use; scalar_t__ next_to_clean; } ;
struct fm10k_intfc {int num_tx_queues; int flags; struct fm10k_ring** tx_ring; int netdev; } ;


 int FM10K_FLAG_RESET_REQUESTED ;
 scalar_t__ netif_carrier_ok (int ) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static void fm10k_watchdog_flush_tx(struct fm10k_intfc *interface)
{
 int some_tx_pending = 0;
 int i;


 if (netif_carrier_ok(interface->netdev))
  return;

 for (i = 0; i < interface->num_tx_queues; i++) {
  struct fm10k_ring *tx_ring = interface->tx_ring[i];

  if (tx_ring->next_to_use != tx_ring->next_to_clean) {
   some_tx_pending = 1;
   break;
  }
 }





 if (some_tx_pending)
  set_bit(FM10K_FLAG_RESET_REQUESTED, interface->flags);
}
