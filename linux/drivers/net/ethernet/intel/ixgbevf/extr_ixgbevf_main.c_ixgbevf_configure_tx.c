
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct ixgbevf_adapter {size_t num_tx_queues; size_t num_xdp_queues; int * xdp_ring; int * tx_ring; } ;


 int ixgbevf_configure_tx_ring (struct ixgbevf_adapter*,int ) ;

__attribute__((used)) static void ixgbevf_configure_tx(struct ixgbevf_adapter *adapter)
{
 u32 i;


 for (i = 0; i < adapter->num_tx_queues; i++)
  ixgbevf_configure_tx_ring(adapter, adapter->tx_ring[i]);
 for (i = 0; i < adapter->num_xdp_queues; i++)
  ixgbevf_configure_tx_ring(adapter, adapter->xdp_ring[i]);
}
