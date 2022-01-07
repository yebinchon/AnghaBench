
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {scalar_t__ (* write_reg ) (struct e1000_hw*,int ,int ) ;scalar_t__ (* read_reg ) (struct e1000_hw*,int ,int *) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ phy; } ;
typedef scalar_t__ s32 ;


 int MII_CR_RESET ;
 int PHY_CONTROL ;
 scalar_t__ stub1 (struct e1000_hw*,int ,int *) ;
 scalar_t__ stub2 (struct e1000_hw*,int ,int ) ;
 int udelay (int) ;

s32 igb_phy_sw_reset(struct e1000_hw *hw)
{
 s32 ret_val = 0;
 u16 phy_ctrl;

 if (!(hw->phy.ops.read_reg))
  goto out;

 ret_val = hw->phy.ops.read_reg(hw, PHY_CONTROL, &phy_ctrl);
 if (ret_val)
  goto out;

 phy_ctrl |= MII_CR_RESET;
 ret_val = hw->phy.ops.write_reg(hw, PHY_CONTROL, phy_ctrl);
 if (ret_val)
  goto out;

 udelay(1);

out:
 return ret_val;
}
