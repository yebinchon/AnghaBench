
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ requested_mode; scalar_t__ current_mode; int pause_time; } ;
struct TYPE_6__ {scalar_t__ (* setup_physical_interface ) (struct e1000_hw*) ;} ;
struct TYPE_7__ {TYPE_1__ ops; } ;
struct TYPE_10__ {scalar_t__ (* check_reset_block ) (struct e1000_hw*) ;} ;
struct TYPE_9__ {TYPE_5__ ops; } ;
struct e1000_hw {TYPE_3__ fc; TYPE_2__ mac; TYPE_4__ phy; } ;
typedef scalar_t__ s32 ;


 int FCAH ;
 int FCAL ;
 int FCT ;
 int FCTTV ;
 int FLOW_CONTROL_ADDRESS_HIGH ;
 int FLOW_CONTROL_ADDRESS_LOW ;
 int FLOW_CONTROL_TYPE ;
 scalar_t__ e1000_fc_default ;
 scalar_t__ e1000_set_default_fc_generic (struct e1000_hw*) ;
 scalar_t__ e1000e_set_fc_watermarks (struct e1000_hw*) ;
 int e_dbg (char*,...) ;
 int ew32 (int ,int ) ;
 scalar_t__ stub1 (struct e1000_hw*) ;
 scalar_t__ stub2 (struct e1000_hw*) ;

s32 e1000e_setup_link_generic(struct e1000_hw *hw)
{
 s32 ret_val;




 if (hw->phy.ops.check_reset_block && hw->phy.ops.check_reset_block(hw))
  return 0;




 if (hw->fc.requested_mode == e1000_fc_default) {
  ret_val = e1000_set_default_fc_generic(hw);
  if (ret_val)
   return ret_val;
 }




 hw->fc.current_mode = hw->fc.requested_mode;

 e_dbg("After fix-ups FlowControl is now = %x\n", hw->fc.current_mode);


 ret_val = hw->mac.ops.setup_physical_interface(hw);
 if (ret_val)
  return ret_val;






 e_dbg("Initializing the Flow Control address, type and timer regs\n");
 ew32(FCT, FLOW_CONTROL_TYPE);
 ew32(FCAH, FLOW_CONTROL_ADDRESS_HIGH);
 ew32(FCAL, FLOW_CONTROL_ADDRESS_LOW);

 ew32(FCTTV, hw->fc.pause_time);

 return e1000e_set_fc_watermarks(hw);
}
