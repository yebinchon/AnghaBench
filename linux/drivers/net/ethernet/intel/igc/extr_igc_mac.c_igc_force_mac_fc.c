
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int current_mode; } ;
struct igc_hw {TYPE_1__ fc; } ;
typedef int s32 ;


 int IGC_CTRL ;
 int IGC_CTRL_RFCE ;
 int IGC_CTRL_TFCE ;
 int IGC_ERR_CONFIG ;
 int hw_dbg (char*,...) ;




 int rd32 (int ) ;
 int wr32 (int ,int) ;

s32 igc_force_mac_fc(struct igc_hw *hw)
{
 s32 ret_val = 0;
 u32 ctrl;

 ctrl = rd32(IGC_CTRL);
 hw_dbg("hw->fc.current_mode = %u\n", hw->fc.current_mode);

 switch (hw->fc.current_mode) {
 case 130:
  ctrl &= (~(IGC_CTRL_TFCE | IGC_CTRL_RFCE));
  break;
 case 129:
  ctrl &= (~IGC_CTRL_TFCE);
  ctrl |= IGC_CTRL_RFCE;
  break;
 case 128:
  ctrl &= (~IGC_CTRL_RFCE);
  ctrl |= IGC_CTRL_TFCE;
  break;
 case 131:
  ctrl |= (IGC_CTRL_TFCE | IGC_CTRL_RFCE);
  break;
 default:
  hw_dbg("Flow control param set incorrectly\n");
  ret_val = -IGC_ERR_CONFIG;
  goto out;
 }

 wr32(IGC_CTRL, ctrl);

out:
 return ret_val;
}
