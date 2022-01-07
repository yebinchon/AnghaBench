
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_adapter {int num_tx_queues; int num_rx_queues; int flags; int stats_lock; int rx_buffer_len; } ;


 int ENOMEM ;
 int MAXIMUM_ETHERNET_VLAN_SIZE ;
 int __E1000_DOWN ;
 scalar_t__ e1000_alloc_queues (struct e1000_adapter*) ;
 int e1000_irq_disable (struct e1000_adapter*) ;
 int e_err (int ,char*) ;
 int probe ;
 int set_bit (int ,int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int e1000_sw_init(struct e1000_adapter *adapter)
{
 adapter->rx_buffer_len = MAXIMUM_ETHERNET_VLAN_SIZE;

 adapter->num_tx_queues = 1;
 adapter->num_rx_queues = 1;

 if (e1000_alloc_queues(adapter)) {
  e_err(probe, "Unable to allocate memory for queues\n");
  return -ENOMEM;
 }


 e1000_irq_disable(adapter);

 spin_lock_init(&adapter->stats_lock);

 set_bit(__E1000_DOWN, &adapter->flags);

 return 0;
}
