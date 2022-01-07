
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int (* release ) (struct e1000_hw*) ;scalar_t__ (* acquire ) (struct e1000_hw*) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_3__ phy; TYPE_1__ mac; } ;
typedef scalar_t__ s32 ;


 int I82579_MSE_LINK_DOWN ;
 int I82579_MSE_THRESHOLD ;
 scalar_t__ e1000_pch2lan ;
 scalar_t__ e1000_set_mdio_slow_mode_hv (struct e1000_hw*) ;
 scalar_t__ e1000_write_emi_reg_locked (struct e1000_hw*,int ,int) ;
 scalar_t__ stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_lv_phy_workarounds_ich8lan(struct e1000_hw *hw)
{
 s32 ret_val = 0;

 if (hw->mac.type != e1000_pch2lan)
  return 0;


 ret_val = e1000_set_mdio_slow_mode_hv(hw);
 if (ret_val)
  return ret_val;

 ret_val = hw->phy.ops.acquire(hw);
 if (ret_val)
  return ret_val;

 ret_val = e1000_write_emi_reg_locked(hw, I82579_MSE_THRESHOLD, 0x0034);
 if (ret_val)
  goto release;

 ret_val = e1000_write_emi_reg_locked(hw, I82579_MSE_LINK_DOWN, 0x0005);
release:
 hw->phy.ops.release(hw);

 return ret_val;
}
