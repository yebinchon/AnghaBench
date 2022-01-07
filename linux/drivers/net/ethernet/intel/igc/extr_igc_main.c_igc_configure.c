
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct igc_ring {int dummy; } ;
struct igc_adapter {int num_rx_queues; struct igc_ring** rx_ring; int hw; struct net_device* netdev; } ;


 int igc_alloc_rx_buffers (struct igc_ring*,int ) ;
 int igc_configure_rx (struct igc_adapter*) ;
 int igc_configure_tx (struct igc_adapter*) ;
 int igc_desc_unused (struct igc_ring*) ;
 int igc_get_hw_control (struct igc_adapter*) ;
 int igc_nfc_filter_restore (struct igc_adapter*) ;
 int igc_rx_fifo_flush_base (int *) ;
 int igc_set_rx_mode (struct net_device*) ;
 int igc_setup_mrqc (struct igc_adapter*) ;
 int igc_setup_rctl (struct igc_adapter*) ;
 int igc_setup_tctl (struct igc_adapter*) ;

__attribute__((used)) static void igc_configure(struct igc_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 int i = 0;

 igc_get_hw_control(adapter);
 igc_set_rx_mode(netdev);

 igc_setup_tctl(adapter);
 igc_setup_mrqc(adapter);
 igc_setup_rctl(adapter);

 igc_nfc_filter_restore(adapter);
 igc_configure_tx(adapter);
 igc_configure_rx(adapter);

 igc_rx_fifo_flush_base(&adapter->hw);





 for (i = 0; i < adapter->num_rx_queues; i++) {
  struct igc_ring *ring = adapter->rx_ring[i];

  igc_alloc_rx_buffers(ring, igc_desc_unused(ring));
 }
}
