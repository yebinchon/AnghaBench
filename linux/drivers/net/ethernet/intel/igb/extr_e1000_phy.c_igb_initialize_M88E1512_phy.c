
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ (* write_reg ) (struct e1000_hw*,int ,int) ;} ;
struct e1000_phy_info {TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;
typedef scalar_t__ s32 ;


 int E1000_M88E1512_CFG_REG_1 ;
 int E1000_M88E1512_CFG_REG_2 ;
 int E1000_M88E1512_CFG_REG_3 ;
 int E1000_M88E1512_MODE ;
 int E1000_M88E1543_PAGE_ADDR ;
 int hw_dbg (char*) ;
 scalar_t__ igb_phy_sw_reset (struct e1000_hw*) ;
 scalar_t__ stub1 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub10 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub11 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub12 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub13 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub14 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub2 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub3 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub4 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub5 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub6 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub7 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub8 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub9 (struct e1000_hw*,int ,int) ;
 int usleep_range (int,int) ;

s32 igb_initialize_M88E1512_phy(struct e1000_hw *hw)
{
 struct e1000_phy_info *phy = &hw->phy;
 s32 ret_val = 0;


 ret_val = phy->ops.write_reg(hw, E1000_M88E1543_PAGE_ADDR, 0x00FF);
 if (ret_val)
  goto out;

 ret_val = phy->ops.write_reg(hw, E1000_M88E1512_CFG_REG_2, 0x214B);
 if (ret_val)
  goto out;

 ret_val = phy->ops.write_reg(hw, E1000_M88E1512_CFG_REG_1, 0x2144);
 if (ret_val)
  goto out;

 ret_val = phy->ops.write_reg(hw, E1000_M88E1512_CFG_REG_2, 0x0C28);
 if (ret_val)
  goto out;

 ret_val = phy->ops.write_reg(hw, E1000_M88E1512_CFG_REG_1, 0x2146);
 if (ret_val)
  goto out;

 ret_val = phy->ops.write_reg(hw, E1000_M88E1512_CFG_REG_2, 0xB233);
 if (ret_val)
  goto out;

 ret_val = phy->ops.write_reg(hw, E1000_M88E1512_CFG_REG_1, 0x214D);
 if (ret_val)
  goto out;

 ret_val = phy->ops.write_reg(hw, E1000_M88E1512_CFG_REG_2, 0xCC0C);
 if (ret_val)
  goto out;

 ret_val = phy->ops.write_reg(hw, E1000_M88E1512_CFG_REG_1, 0x2159);
 if (ret_val)
  goto out;


 ret_val = phy->ops.write_reg(hw, E1000_M88E1543_PAGE_ADDR, 0x00FB);
 if (ret_val)
  goto out;

 ret_val = phy->ops.write_reg(hw, E1000_M88E1512_CFG_REG_3, 0x000D);
 if (ret_val)
  goto out;


 ret_val = phy->ops.write_reg(hw, E1000_M88E1543_PAGE_ADDR, 0x12);
 if (ret_val)
  goto out;


 ret_val = phy->ops.write_reg(hw, E1000_M88E1512_MODE, 0x8001);
 if (ret_val)
  goto out;


 ret_val = phy->ops.write_reg(hw, E1000_M88E1543_PAGE_ADDR, 0);
 if (ret_val)
  goto out;

 ret_val = igb_phy_sw_reset(hw);
 if (ret_val) {
  hw_dbg("Error committing the PHY changes\n");
  return ret_val;
 }


 usleep_range(1000, 2000);
out:
 return ret_val;
}
