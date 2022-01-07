
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_ring {int state; } ;
struct ixgbe_adapter {int dummy; } ;


 int __IXGBE_TX_DISABLED ;
 int ixgbe_disable_txr_hw (struct ixgbe_adapter*,struct ixgbe_ring*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void ixgbe_disable_txr(struct ixgbe_adapter *adapter,
         struct ixgbe_ring *tx_ring)
{
 set_bit(__IXGBE_TX_DISABLED, &tx_ring->state);
 ixgbe_disable_txr_hw(adapter, tx_ring);
}
