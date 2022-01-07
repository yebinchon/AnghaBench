
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igb_ring {int dummy; } ;
struct igb_adapter {int num_rx_queues; struct igb_ring** rx_ring; } ;


 int igb_configure_rx_ring (struct igb_adapter*,struct igb_ring*) ;
 int igb_set_default_mac_filter (struct igb_adapter*) ;
 int igb_set_rx_buffer_len (struct igb_adapter*,struct igb_ring*) ;

__attribute__((used)) static void igb_configure_rx(struct igb_adapter *adapter)
{
 int i;


 igb_set_default_mac_filter(adapter);




 for (i = 0; i < adapter->num_rx_queues; i++) {
  struct igb_ring *rx_ring = adapter->rx_ring[i];

  igb_set_rx_buffer_len(adapter, rx_ring);
  igb_configure_rx_ring(adapter, rx_ring);
 }
}
