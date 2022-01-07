
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int (* check_for_link ) (struct e1000_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {int mbx_lock; TYPE_2__ mac; } ;
struct igbvf_adapter {struct e1000_hw hw; } ;


 int E1000_STATUS_LU ;
 int STATUS ;
 int er32 (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct e1000_hw*) ;

__attribute__((used)) static int igbvf_link_test(struct igbvf_adapter *adapter, u64 *data)
{
 struct e1000_hw *hw = &adapter->hw;
 *data = 0;

 spin_lock_bh(&hw->mbx_lock);

 hw->mac.ops.check_for_link(hw);

 spin_unlock_bh(&hw->mbx_lock);

 if (!(er32(STATUS) & E1000_STATUS_LU))
  *data = 1;

 return *data;
}
