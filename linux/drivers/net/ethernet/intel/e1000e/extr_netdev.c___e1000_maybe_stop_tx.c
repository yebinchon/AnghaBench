
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_ring {struct e1000_adapter* adapter; } ;
struct e1000_adapter {int restart_queue; int netdev; } ;


 int EBUSY ;
 int e1000_desc_unused (struct e1000_ring*) ;
 int netif_start_queue (int ) ;
 int netif_stop_queue (int ) ;
 int smp_mb () ;

__attribute__((used)) static int __e1000_maybe_stop_tx(struct e1000_ring *tx_ring, int size)
{
 struct e1000_adapter *adapter = tx_ring->adapter;

 netif_stop_queue(adapter->netdev);




 smp_mb();




 if (e1000_desc_unused(tx_ring) < size)
  return -EBUSY;


 netif_start_queue(adapter->netdev);
 ++adapter->restart_queue;
 return 0;
}
