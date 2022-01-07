
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_10__ {int type; } ;
struct TYPE_8__ {scalar_t__ (* check_reset_block ) (struct e1000_hw*) ;int (* release ) (struct e1000_hw*) ;scalar_t__ (* acquire ) (struct e1000_hw*) ;} ;
struct TYPE_9__ {TYPE_3__ ops; } ;
struct TYPE_6__ {int ulp_state; } ;
struct TYPE_7__ {TYPE_1__ ich8lan; } ;
struct e1000_hw {TYPE_5__ mac; TYPE_4__ phy; TYPE_2__ dev_spec; struct e1000_adapter* adapter; } ;
struct e1000_adapter {int dummy; } ;
typedef scalar_t__ s32 ;


 int CTRL_EXT ;
 int E1000_CTRL_EXT_FORCE_SMBUS ;
 scalar_t__ E1000_ERR_PHY ;
 int E1000_ICH_FWSM_FW_VALID ;
 int FWSM ;
 int e1000_disable_ulp_lpt_lp (struct e1000_hw*,int) ;
 int e1000_gate_hw_phy_config_ich8lan (struct e1000_hw*,int) ;





 int e1000_phy_is_accessible_pchlan (struct e1000_hw*) ;
 int e1000_toggle_lanphypc_pch_lpt (struct e1000_hw*) ;
 int e1000_ulp_state_unknown ;
 scalar_t__ e1000e_phy_hw_reset_generic (struct e1000_hw*) ;
 int e_dbg (char*) ;
 int e_err (char*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int msleep (int) ;
 scalar_t__ stub1 (struct e1000_hw*) ;
 scalar_t__ stub2 (struct e1000_hw*) ;
 int stub3 (struct e1000_hw*) ;
 scalar_t__ stub4 (struct e1000_hw*) ;
 scalar_t__ stub5 (struct e1000_hw*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static s32 e1000_init_phy_workarounds_pchlan(struct e1000_hw *hw)
{
 struct e1000_adapter *adapter = hw->adapter;
 u32 mac_reg, fwsm = er32(FWSM);
 s32 ret_val;




 e1000_gate_hw_phy_config_ich8lan(hw, 1);




 hw->dev_spec.ich8lan.ulp_state = e1000_ulp_state_unknown;
 e1000_disable_ulp_lpt_lp(hw, 1);

 ret_val = hw->phy.ops.acquire(hw);
 if (ret_val) {
  e_dbg("Failed to initialize PHY flow\n");
  goto out;
 }





 switch (hw->mac.type) {
 case 130:
 case 129:
 case 131:
  if (e1000_phy_is_accessible_pchlan(hw))
   break;




  mac_reg = er32(CTRL_EXT);
  mac_reg |= E1000_CTRL_EXT_FORCE_SMBUS;
  ew32(CTRL_EXT, mac_reg);





  msleep(50);


 case 132:
  if (e1000_phy_is_accessible_pchlan(hw))
   break;


 case 128:
  if ((hw->mac.type == 128) &&
      (fwsm & E1000_ICH_FWSM_FW_VALID))
   break;

  if (hw->phy.ops.check_reset_block(hw)) {
   e_dbg("Required LANPHYPC toggle blocked by ME\n");
   ret_val = -E1000_ERR_PHY;
   break;
  }


  e1000_toggle_lanphypc_pch_lpt(hw);
  if (hw->mac.type >= 130) {
   if (e1000_phy_is_accessible_pchlan(hw))
    break;




   mac_reg = er32(CTRL_EXT);
   mac_reg &= ~E1000_CTRL_EXT_FORCE_SMBUS;
   ew32(CTRL_EXT, mac_reg);

   if (e1000_phy_is_accessible_pchlan(hw))
    break;

   ret_val = -E1000_ERR_PHY;
  }
  break;
 default:
  break;
 }

 hw->phy.ops.release(hw);
 if (!ret_val) {


  if (hw->phy.ops.check_reset_block(hw)) {
   e_err("Reset blocked by ME\n");
   goto out;
  }






  ret_val = e1000e_phy_hw_reset_generic(hw);
  if (ret_val)
   goto out;







  ret_val = hw->phy.ops.check_reset_block(hw);
  if (ret_val)
   e_err("ME blocked access to PHY after reset\n");
 }

out:

 if ((hw->mac.type == 132) &&
     !(fwsm & E1000_ICH_FWSM_FW_VALID)) {
  usleep_range(10000, 11000);
  e1000_gate_hw_phy_config_ich8lan(hw, 0);
 }

 return ret_val;
}
