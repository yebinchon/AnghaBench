
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int CTRL ;
 int E1000_CTRL_FRCDPX ;
 int E1000_CTRL_FRCSPD ;
 int E1000_CTRL_SLU ;
 int E1000_KMRNCTRLSTA_INB_CTRL_DIS_PADDING ;
 int E1000_KMRNCTRLSTA_OFFSET_INB_CTRL ;
 int GG82563_REG (int,int) ;
 scalar_t__ e1000_copper_link_setup_gg82563_80003es2lan (struct e1000_hw*) ;
 scalar_t__ e1000_read_kmrn_reg_80003es2lan (struct e1000_hw*,int ,int*) ;
 scalar_t__ e1000_write_kmrn_reg_80003es2lan (struct e1000_hw*,int ,int) ;
 scalar_t__ e1000e_setup_copper_link (struct e1000_hw*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;

__attribute__((used)) static s32 e1000_setup_copper_link_80003es2lan(struct e1000_hw *hw)
{
 u32 ctrl;
 s32 ret_val;
 u16 reg_data;

 ctrl = er32(CTRL);
 ctrl |= E1000_CTRL_SLU;
 ctrl &= ~(E1000_CTRL_FRCSPD | E1000_CTRL_FRCDPX);
 ew32(CTRL, ctrl);





 ret_val = e1000_write_kmrn_reg_80003es2lan(hw, GG82563_REG(0x34, 4),
         0xFFFF);
 if (ret_val)
  return ret_val;
 ret_val = e1000_read_kmrn_reg_80003es2lan(hw, GG82563_REG(0x34, 9),
        &reg_data);
 if (ret_val)
  return ret_val;
 reg_data |= 0x3F;
 ret_val = e1000_write_kmrn_reg_80003es2lan(hw, GG82563_REG(0x34, 9),
         reg_data);
 if (ret_val)
  return ret_val;
 ret_val =
     e1000_read_kmrn_reg_80003es2lan(hw,
         E1000_KMRNCTRLSTA_OFFSET_INB_CTRL,
         &reg_data);
 if (ret_val)
  return ret_val;
 reg_data |= E1000_KMRNCTRLSTA_INB_CTRL_DIS_PADDING;
 ret_val =
     e1000_write_kmrn_reg_80003es2lan(hw,
          E1000_KMRNCTRLSTA_OFFSET_INB_CTRL,
          reg_data);
 if (ret_val)
  return ret_val;

 ret_val = e1000_copper_link_setup_gg82563_80003es2lan(hw);
 if (ret_val)
  return ret_val;

 return e1000e_setup_copper_link(hw);
}
