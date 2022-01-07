
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_tx_ring {int dummy; } ;
struct e1000_rx_ring {int dummy; } ;
struct e1000_adapter {void* tx_ring; void* rx_ring; int num_rx_queues; int num_tx_queues; } ;


 int E1000_SUCCESS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* kcalloc (int ,int,int ) ;
 int kfree (void*) ;

__attribute__((used)) static int e1000_alloc_queues(struct e1000_adapter *adapter)
{
 adapter->tx_ring = kcalloc(adapter->num_tx_queues,
       sizeof(struct e1000_tx_ring), GFP_KERNEL);
 if (!adapter->tx_ring)
  return -ENOMEM;

 adapter->rx_ring = kcalloc(adapter->num_rx_queues,
       sizeof(struct e1000_rx_ring), GFP_KERNEL);
 if (!adapter->rx_ring) {
  kfree(adapter->tx_ring);
  return -ENOMEM;
 }

 return E1000_SUCCESS;
}
