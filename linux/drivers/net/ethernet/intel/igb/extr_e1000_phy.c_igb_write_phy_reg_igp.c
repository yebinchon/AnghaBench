
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int (* release ) (struct e1000_hw*) ;scalar_t__ (* acquire ) (struct e1000_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ phy; } ;
typedef scalar_t__ s32 ;


 int IGP01E1000_PHY_PAGE_SELECT ;
 int MAX_PHY_MULTI_PAGE_REG ;
 int MAX_PHY_REG_ADDRESS ;
 scalar_t__ igb_write_phy_reg_mdic (struct e1000_hw*,int,int ) ;
 scalar_t__ stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*) ;
 int stub3 (struct e1000_hw*) ;

s32 igb_write_phy_reg_igp(struct e1000_hw *hw, u32 offset, u16 data)
{
 s32 ret_val = 0;

 if (!(hw->phy.ops.acquire))
  goto out;

 ret_val = hw->phy.ops.acquire(hw);
 if (ret_val)
  goto out;

 if (offset > MAX_PHY_MULTI_PAGE_REG) {
  ret_val = igb_write_phy_reg_mdic(hw,
       IGP01E1000_PHY_PAGE_SELECT,
       (u16)offset);
  if (ret_val) {
   hw->phy.ops.release(hw);
   goto out;
  }
 }

 ret_val = igb_write_phy_reg_mdic(hw, MAX_PHY_REG_ADDRESS & offset,
      data);

 hw->phy.ops.release(hw);

out:
 return ret_val;
}
