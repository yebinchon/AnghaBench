
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int E1000_ERR_PHY ;
 scalar_t__ E1000_GEN_CTL_ADDRESS_SHIFT ;
 scalar_t__ E1000_GEN_CTL_READY ;
 scalar_t__ E1000_GEN_POLL_TIMEOUT ;
 int hw_dbg (char*,scalar_t__) ;
 scalar_t__ rd32 (scalar_t__) ;
 int udelay (int) ;
 int wr32 (scalar_t__,scalar_t__) ;

s32 igb_write_8bit_ctrl_reg(struct e1000_hw *hw, u32 reg,
         u32 offset, u8 data)
{
 u32 i, regvalue = 0;
 s32 ret_val = 0;


 regvalue = ((u32)data) | (offset << E1000_GEN_CTL_ADDRESS_SHIFT);
 wr32(reg, regvalue);


 for (i = 0; i < E1000_GEN_POLL_TIMEOUT; i++) {
  udelay(5);
  regvalue = rd32(reg);
  if (regvalue & E1000_GEN_CTL_READY)
   break;
 }
 if (!(regvalue & E1000_GEN_CTL_READY)) {
  hw_dbg("Reg %08x did not indicate ready\n", reg);
  ret_val = -E1000_ERR_PHY;
  goto out;
 }

out:
 return ret_val;
}
