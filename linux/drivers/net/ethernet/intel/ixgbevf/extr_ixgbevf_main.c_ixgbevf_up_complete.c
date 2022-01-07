
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {int (* set_rar ) (struct ixgbe_hw*,int ,int ,int ) ;} ;
struct TYPE_4__ {int get_link_status; int perm_addr; TYPE_1__ ops; int addr; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbevf_adapter {int service_timer; int state; int mbx_lock; struct ixgbe_hw hw; struct net_device* netdev; } ;


 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_VTEICR ;
 int __IXGBEVF_DOWN ;
 int clear_bit (int ,int *) ;
 scalar_t__ is_valid_ether_addr (int ) ;
 int ixgbevf_configure_msix (struct ixgbevf_adapter*) ;
 int ixgbevf_init_last_counter_stats (struct ixgbevf_adapter*) ;
 int ixgbevf_irq_enable (struct ixgbevf_adapter*) ;
 int ixgbevf_napi_enable_all (struct ixgbevf_adapter*) ;
 int ixgbevf_save_reset_stats (struct ixgbevf_adapter*) ;
 int jiffies ;
 int mod_timer (int *,int ) ;
 int netif_tx_start_all_queues (struct net_device*) ;
 int smp_mb__before_atomic () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct ixgbe_hw*,int ,int ,int ) ;
 int stub2 (struct ixgbe_hw*,int ,int ,int ) ;

__attribute__((used)) static void ixgbevf_up_complete(struct ixgbevf_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 struct ixgbe_hw *hw = &adapter->hw;

 ixgbevf_configure_msix(adapter);

 spin_lock_bh(&adapter->mbx_lock);

 if (is_valid_ether_addr(hw->mac.addr))
  hw->mac.ops.set_rar(hw, 0, hw->mac.addr, 0);
 else
  hw->mac.ops.set_rar(hw, 0, hw->mac.perm_addr, 0);

 spin_unlock_bh(&adapter->mbx_lock);

 smp_mb__before_atomic();
 clear_bit(__IXGBEVF_DOWN, &adapter->state);
 ixgbevf_napi_enable_all(adapter);


 IXGBE_READ_REG(hw, IXGBE_VTEICR);
 ixgbevf_irq_enable(adapter);


 netif_tx_start_all_queues(netdev);

 ixgbevf_save_reset_stats(adapter);
 ixgbevf_init_last_counter_stats(adapter);

 hw->mac.get_link_status = 1;
 mod_timer(&adapter->service_timer, jiffies);
}
