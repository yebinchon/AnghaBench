
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igb_adapter {int num_tx_queues; scalar_t__* tx_ring; } ;


 int igb_free_tx_resources (scalar_t__) ;

__attribute__((used)) static void igb_free_all_tx_resources(struct igb_adapter *adapter)
{
 int i;

 for (i = 0; i < adapter->num_tx_queues; i++)
  if (adapter->tx_ring[i])
   igb_free_tx_resources(adapter->tx_ring[i]);
}
