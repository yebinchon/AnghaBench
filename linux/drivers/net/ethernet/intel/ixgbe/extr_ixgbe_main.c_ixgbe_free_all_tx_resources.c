
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ixgbe_adapter {int num_tx_queues; int num_xdp_queues; TYPE_1__** xdp_ring; TYPE_1__** tx_ring; } ;
struct TYPE_2__ {scalar_t__ desc; } ;


 int ixgbe_free_tx_resources (TYPE_1__*) ;

__attribute__((used)) static void ixgbe_free_all_tx_resources(struct ixgbe_adapter *adapter)
{
 int i;

 for (i = 0; i < adapter->num_tx_queues; i++)
  if (adapter->tx_ring[i]->desc)
   ixgbe_free_tx_resources(adapter->tx_ring[i]);
 for (i = 0; i < adapter->num_xdp_queues; i++)
  if (adapter->xdp_ring[i]->desc)
   ixgbe_free_tx_resources(adapter->xdp_ring[i]);
}
