
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
typedef int s32 ;


 int E1000_CCMCTL ;
 int E1000_GIOCTL ;
 int E1000_SCCTL ;
 int E1000_SCTL ;
 scalar_t__ e1000_82575 ;
 int hw_dbg (char*) ;
 int igb_write_8bit_ctrl_reg (struct e1000_hw*,int ,int,int) ;

__attribute__((used)) static s32 igb_reset_init_script_82575(struct e1000_hw *hw)
{
 if (hw->mac.type == e1000_82575) {
  hw_dbg("Running reset init script for 82575\n");

  igb_write_8bit_ctrl_reg(hw, E1000_SCTL, 0x00, 0x0C);
  igb_write_8bit_ctrl_reg(hw, E1000_SCTL, 0x01, 0x78);
  igb_write_8bit_ctrl_reg(hw, E1000_SCTL, 0x1B, 0x23);
  igb_write_8bit_ctrl_reg(hw, E1000_SCTL, 0x23, 0x15);


  igb_write_8bit_ctrl_reg(hw, E1000_CCMCTL, 0x14, 0x00);
  igb_write_8bit_ctrl_reg(hw, E1000_CCMCTL, 0x10, 0x00);


  igb_write_8bit_ctrl_reg(hw, E1000_GIOCTL, 0x00, 0xEC);
  igb_write_8bit_ctrl_reg(hw, E1000_GIOCTL, 0x61, 0xDF);
  igb_write_8bit_ctrl_reg(hw, E1000_GIOCTL, 0x34, 0x05);
  igb_write_8bit_ctrl_reg(hw, E1000_GIOCTL, 0x2F, 0x81);


  igb_write_8bit_ctrl_reg(hw, E1000_SCCTL, 0x02, 0x47);
  igb_write_8bit_ctrl_reg(hw, E1000_SCCTL, 0x14, 0x00);
  igb_write_8bit_ctrl_reg(hw, E1000_SCCTL, 0x10, 0x00);
 }

 return 0;
}
