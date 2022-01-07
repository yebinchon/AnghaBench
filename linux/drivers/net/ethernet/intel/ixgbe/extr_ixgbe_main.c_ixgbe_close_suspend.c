
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* enter_lplu ) (TYPE_3__*) ;} ;
struct TYPE_5__ {int reset_disable; TYPE_1__ ops; } ;
struct TYPE_6__ {TYPE_2__ phy; } ;
struct ixgbe_adapter {TYPE_3__ hw; } ;


 int ixgbe_down (struct ixgbe_adapter*) ;
 int ixgbe_free_all_rx_resources (struct ixgbe_adapter*) ;
 int ixgbe_free_all_tx_resources (struct ixgbe_adapter*) ;
 int ixgbe_free_irq (struct ixgbe_adapter*) ;
 int ixgbe_ptp_suspend (struct ixgbe_adapter*) ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static void ixgbe_close_suspend(struct ixgbe_adapter *adapter)
{
 ixgbe_ptp_suspend(adapter);

 if (adapter->hw.phy.ops.enter_lplu) {
  adapter->hw.phy.reset_disable = 1;
  ixgbe_down(adapter);
  adapter->hw.phy.ops.enter_lplu(&adapter->hw);
  adapter->hw.phy.reset_disable = 0;
 } else {
  ixgbe_down(adapter);
 }

 ixgbe_free_irq(adapter);

 ixgbe_free_all_tx_resources(adapter);
 ixgbe_free_all_rx_resources(adapter);
}
