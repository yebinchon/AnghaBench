
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ (* check_for_link ) (struct e1000_hw*) ;} ;
struct TYPE_4__ {int get_link_status; TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ mac; int mbx_lock; } ;
struct igbvf_adapter {int reset_task; scalar_t__ last_reset; int state; struct e1000_hw hw; } ;
typedef scalar_t__ s32 ;


 scalar_t__ E1000_SUCCESS ;
 int HZ ;
 int __IGBVF_DOWN ;
 int jiffies ;
 int schedule_work (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ stub1 (struct e1000_hw*) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ time_after (int ,scalar_t__) ;

__attribute__((used)) static bool igbvf_has_link(struct igbvf_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 s32 ret_val = E1000_SUCCESS;
 bool link_active;


 if (test_bit(__IGBVF_DOWN, &adapter->state))
  return 0;

 spin_lock_bh(&hw->mbx_lock);

 ret_val = hw->mac.ops.check_for_link(hw);

 spin_unlock_bh(&hw->mbx_lock);

 link_active = !hw->mac.get_link_status;


 if (ret_val && time_after(jiffies, adapter->last_reset + (10 * HZ)))
  schedule_work(&adapter->reset_task);

 return link_active;
}
