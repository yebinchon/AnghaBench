
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct TYPE_3__ {scalar_t__ (* read_reg ) (struct e1000_hw*,int ,scalar_t__*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ phy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ MII_SR_LINK_STATUS ;
 int PHY_STATUS ;
 int mdelay (scalar_t__) ;
 scalar_t__ stub1 (struct e1000_hw*,int ,scalar_t__*) ;
 scalar_t__ stub2 (struct e1000_hw*,int ,scalar_t__*) ;
 int udelay (scalar_t__) ;

s32 igb_phy_has_link(struct e1000_hw *hw, u32 iterations,
       u32 usec_interval, bool *success)
{
 s32 ret_val = 0;
 u16 i, phy_status;

 for (i = 0; i < iterations; i++) {




  ret_val = hw->phy.ops.read_reg(hw, PHY_STATUS, &phy_status);
  if (ret_val && usec_interval > 0) {




   if (usec_interval >= 1000)
    mdelay(usec_interval/1000);
   else
    udelay(usec_interval);
  }
  ret_val = hw->phy.ops.read_reg(hw, PHY_STATUS, &phy_status);
  if (ret_val)
   break;
  if (phy_status & MII_SR_LINK_STATUS)
   break;
  if (usec_interval >= 1000)
   mdelay(usec_interval/1000);
  else
   udelay(usec_interval);
 }

 *success = (i < iterations) ? 1 : 0;

 return ret_val;
}
