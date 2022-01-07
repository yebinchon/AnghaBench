
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int CTRL ;
 int CTRL_EXT ;
 int E1000_CTRL_EXT_SPD_BYPS ;
 int E1000_CTRL_FRCSPD ;
 int E1000_CTRL_SPD_100 ;
 int E1000_CTRL_SPD_1000 ;
 int E1000_KMRNCTRLSTA_K1_CONFIG ;
 int E1000_KMRNCTRLSTA_K1_ENABLE ;
 scalar_t__ e1000e_read_kmrn_reg_locked (struct e1000_hw*,int ,int *) ;
 scalar_t__ e1000e_write_kmrn_reg_locked (struct e1000_hw*,int ,int ) ;
 int e1e_flush () ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int usleep_range (int,int) ;

s32 e1000_configure_k1_ich8lan(struct e1000_hw *hw, bool k1_enable)
{
 s32 ret_val;
 u32 ctrl_reg = 0;
 u32 ctrl_ext = 0;
 u32 reg = 0;
 u16 kmrn_reg = 0;

 ret_val = e1000e_read_kmrn_reg_locked(hw, E1000_KMRNCTRLSTA_K1_CONFIG,
           &kmrn_reg);
 if (ret_val)
  return ret_val;

 if (k1_enable)
  kmrn_reg |= E1000_KMRNCTRLSTA_K1_ENABLE;
 else
  kmrn_reg &= ~E1000_KMRNCTRLSTA_K1_ENABLE;

 ret_val = e1000e_write_kmrn_reg_locked(hw, E1000_KMRNCTRLSTA_K1_CONFIG,
            kmrn_reg);
 if (ret_val)
  return ret_val;

 usleep_range(20, 40);
 ctrl_ext = er32(CTRL_EXT);
 ctrl_reg = er32(CTRL);

 reg = ctrl_reg & ~(E1000_CTRL_SPD_1000 | E1000_CTRL_SPD_100);
 reg |= E1000_CTRL_FRCSPD;
 ew32(CTRL, reg);

 ew32(CTRL_EXT, ctrl_ext | E1000_CTRL_EXT_SPD_BYPS);
 e1e_flush();
 usleep_range(20, 40);
 ew32(CTRL, ctrl_reg);
 ew32(CTRL_EXT, ctrl_ext);
 e1e_flush();
 usleep_range(20, 40);

 return 0;
}
