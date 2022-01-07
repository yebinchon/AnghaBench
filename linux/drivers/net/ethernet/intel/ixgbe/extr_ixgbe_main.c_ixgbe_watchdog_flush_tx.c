
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_adapter {int state; int netdev; } ;


 int __IXGBE_RESET_REQUESTED ;
 int drv ;
 int e_warn (int ,char*) ;
 scalar_t__ ixgbe_ring_tx_pending (struct ixgbe_adapter*) ;
 scalar_t__ ixgbe_vf_tx_pending (struct ixgbe_adapter*) ;
 int netif_carrier_ok (int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void ixgbe_watchdog_flush_tx(struct ixgbe_adapter *adapter)
{
 if (!netif_carrier_ok(adapter->netdev)) {
  if (ixgbe_ring_tx_pending(adapter) ||
      ixgbe_vf_tx_pending(adapter)) {





   e_warn(drv, "initiating reset to clear Tx work after link loss\n");
   set_bit(__IXGBE_RESET_REQUESTED, &adapter->state);
  }
 }
}
