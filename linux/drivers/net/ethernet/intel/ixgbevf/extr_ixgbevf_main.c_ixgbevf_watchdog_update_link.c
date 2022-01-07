
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ (* check_link ) (struct ixgbe_hw*,int *,int*,int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbevf_adapter {int link_up; int link_speed; int state; scalar_t__ last_reset; int mbx_lock; struct ixgbe_hw hw; } ;
typedef scalar_t__ s32 ;


 int HZ ;
 int __IXGBEVF_RESET_REQUESTED ;
 int jiffies ;
 int set_bit (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ stub1 (struct ixgbe_hw*,int *,int*,int) ;
 scalar_t__ time_after (int ,scalar_t__) ;

__attribute__((used)) static void ixgbevf_watchdog_update_link(struct ixgbevf_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u32 link_speed = adapter->link_speed;
 bool link_up = adapter->link_up;
 s32 err;

 spin_lock_bh(&adapter->mbx_lock);

 err = hw->mac.ops.check_link(hw, &link_speed, &link_up, 0);

 spin_unlock_bh(&adapter->mbx_lock);


 if (err && time_after(jiffies, adapter->last_reset + (10 * HZ))) {
  set_bit(__IXGBEVF_RESET_REQUESTED, &adapter->state);
  link_up = 0;
 }

 adapter->link_up = link_up;
 adapter->link_speed = link_speed;
}
