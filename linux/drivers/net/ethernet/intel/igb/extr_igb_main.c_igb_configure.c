
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct igb_ring {int dummy; } ;
struct igb_adapter {int num_rx_queues; struct igb_ring** rx_ring; int hw; struct net_device* netdev; } ;


 int igb_alloc_rx_buffers (struct igb_ring*,int ) ;
 int igb_configure_rx (struct igb_adapter*) ;
 int igb_configure_tx (struct igb_adapter*) ;
 int igb_desc_unused (struct igb_ring*) ;
 int igb_get_hw_control (struct igb_adapter*) ;
 int igb_nfc_filter_restore (struct igb_adapter*) ;
 int igb_restore_vlan (struct igb_adapter*) ;
 int igb_rx_fifo_flush_82575 (int *) ;
 int igb_set_rx_mode (struct net_device*) ;
 int igb_setup_mrqc (struct igb_adapter*) ;
 int igb_setup_rctl (struct igb_adapter*) ;
 int igb_setup_tctl (struct igb_adapter*) ;
 int igb_setup_tx_mode (struct igb_adapter*) ;

__attribute__((used)) static void igb_configure(struct igb_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 int i;

 igb_get_hw_control(adapter);
 igb_set_rx_mode(netdev);
 igb_setup_tx_mode(adapter);

 igb_restore_vlan(adapter);

 igb_setup_tctl(adapter);
 igb_setup_mrqc(adapter);
 igb_setup_rctl(adapter);

 igb_nfc_filter_restore(adapter);
 igb_configure_tx(adapter);
 igb_configure_rx(adapter);

 igb_rx_fifo_flush_82575(&adapter->hw);





 for (i = 0; i < adapter->num_rx_queues; i++) {
  struct igb_ring *ring = adapter->rx_ring[i];
  igb_alloc_rx_buffers(ring, igb_desc_unused(ring));
 }
}
