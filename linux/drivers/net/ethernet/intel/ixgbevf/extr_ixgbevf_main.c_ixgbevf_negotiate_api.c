
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* negotiate_api_version ) (struct ixgbe_hw*,int const) ;} ;
struct TYPE_3__ {TYPE_2__ ops; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbevf_adapter {int mbx_lock; struct ixgbe_hw hw; } ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct ixgbe_hw*,int const) ;

__attribute__((used)) static void ixgbevf_negotiate_api(struct ixgbevf_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 static const int api[] = {
  129,
  130,
  131,
  132,
  133,
  128
 };
 int err, idx = 0;

 spin_lock_bh(&adapter->mbx_lock);

 while (api[idx] != 128) {
  err = hw->mac.ops.negotiate_api_version(hw, api[idx]);
  if (!err)
   break;
  idx++;
 }

 spin_unlock_bh(&adapter->mbx_lock);
}
