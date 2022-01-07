
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ixgbevf_adapter {int num_rx_queues; TYPE_1__** rx_ring; } ;
struct TYPE_2__ {scalar_t__ desc; } ;


 int ixgbevf_free_rx_resources (TYPE_1__*) ;

__attribute__((used)) static void ixgbevf_free_all_rx_resources(struct ixgbevf_adapter *adapter)
{
 int i;

 for (i = 0; i < adapter->num_rx_queues; i++)
  if (adapter->rx_ring[i]->desc)
   ixgbevf_free_rx_resources(adapter->rx_ring[i]);
}
