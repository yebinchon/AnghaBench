
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igb_adapter {int num_tx_queues; scalar_t__* tx_ring; } ;


 int igb_clean_tx_ring (scalar_t__) ;

__attribute__((used)) static void igb_clean_all_tx_rings(struct igb_adapter *adapter)
{
 int i;

 for (i = 0; i < adapter->num_tx_queues; i++)
  if (adapter->tx_ring[i])
   igb_clean_tx_ring(adapter->tx_ring[i]);
}
