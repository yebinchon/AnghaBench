
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ requested_mode; scalar_t__ current_mode; int pause_time; } ;
struct TYPE_4__ {scalar_t__ (* setup_physical_interface ) (struct igc_hw*) ;} ;
struct TYPE_5__ {TYPE_1__ ops; } ;
struct igc_hw {TYPE_3__ fc; TYPE_2__ mac; } ;
typedef scalar_t__ s32 ;


 int FLOW_CONTROL_ADDRESS_HIGH ;
 int FLOW_CONTROL_ADDRESS_LOW ;
 int FLOW_CONTROL_TYPE ;
 int IGC_FCAH ;
 int IGC_FCAL ;
 int IGC_FCT ;
 int IGC_FCTTV ;
 int hw_dbg (char*,...) ;
 scalar_t__ igc_check_reset_block (struct igc_hw*) ;
 scalar_t__ igc_fc_default ;
 scalar_t__ igc_fc_full ;
 scalar_t__ igc_set_fc_watermarks (struct igc_hw*) ;
 scalar_t__ stub1 (struct igc_hw*) ;
 int wr32 (int ,int ) ;

s32 igc_setup_link(struct igc_hw *hw)
{
 s32 ret_val = 0;




 if (igc_check_reset_block(hw))
  goto out;




 if (hw->fc.requested_mode == igc_fc_default)
  hw->fc.requested_mode = igc_fc_full;





 hw->fc.current_mode = hw->fc.requested_mode;

 hw_dbg("After fix-ups FlowControl is now = %x\n", hw->fc.current_mode);


 ret_val = hw->mac.ops.setup_physical_interface(hw);
 if (ret_val)
  goto out;






 hw_dbg("Initializing the Flow Control address, type and timer regs\n");
 wr32(IGC_FCT, FLOW_CONTROL_TYPE);
 wr32(IGC_FCAH, FLOW_CONTROL_ADDRESS_HIGH);
 wr32(IGC_FCAL, FLOW_CONTROL_ADDRESS_LOW);

 wr32(IGC_FCTTV, hw->fc.pause_time);

 ret_val = igc_set_fc_watermarks(hw);

out:
 return ret_val;
}
