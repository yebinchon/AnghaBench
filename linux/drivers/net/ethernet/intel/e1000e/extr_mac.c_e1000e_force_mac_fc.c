
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int current_mode; } ;
struct e1000_hw {TYPE_1__ fc; } ;
typedef int s32 ;


 int CTRL ;
 int E1000_CTRL_RFCE ;
 int E1000_CTRL_TFCE ;
 int E1000_ERR_CONFIG ;




 int e_dbg (char*,...) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;

s32 e1000e_force_mac_fc(struct e1000_hw *hw)
{
 u32 ctrl;

 ctrl = er32(CTRL);
 e_dbg("hw->fc.current_mode = %u\n", hw->fc.current_mode);

 switch (hw->fc.current_mode) {
 case 130:
  ctrl &= (~(E1000_CTRL_TFCE | E1000_CTRL_RFCE));
  break;
 case 129:
  ctrl &= (~E1000_CTRL_TFCE);
  ctrl |= E1000_CTRL_RFCE;
  break;
 case 128:
  ctrl &= (~E1000_CTRL_RFCE);
  ctrl |= E1000_CTRL_TFCE;
  break;
 case 131:
  ctrl |= (E1000_CTRL_TFCE | E1000_CTRL_RFCE);
  break;
 default:
  e_dbg("Flow control param set incorrectly\n");
  return -E1000_ERR_CONFIG;
 }

 ew32(CTRL, ctrl);

 return 0;
}
