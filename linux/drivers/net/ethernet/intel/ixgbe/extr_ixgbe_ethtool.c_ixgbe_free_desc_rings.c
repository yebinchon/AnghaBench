
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_adapter {int test_rx_ring; int test_tx_ring; } ;


 int ixgbe_disable_rx (struct ixgbe_adapter*) ;
 int ixgbe_disable_tx (struct ixgbe_adapter*) ;
 int ixgbe_free_rx_resources (int *) ;
 int ixgbe_free_tx_resources (int *) ;
 int ixgbe_reset (struct ixgbe_adapter*) ;

__attribute__((used)) static void ixgbe_free_desc_rings(struct ixgbe_adapter *adapter)
{







 ixgbe_disable_rx(adapter);


 ixgbe_disable_tx(adapter);

 ixgbe_reset(adapter);

 ixgbe_free_tx_resources(&adapter->test_tx_ring);
 ixgbe_free_rx_resources(&adapter->test_rx_ring);
}
