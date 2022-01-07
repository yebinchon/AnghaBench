
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int (* release ) (struct igc_hw*) ;scalar_t__ (* acquire ) (struct igc_hw*) ;} ;
struct igc_phy_info {TYPE_1__ ops; int reset_delay_us; } ;
struct igc_hw {struct igc_phy_info phy; } ;
typedef scalar_t__ s32 ;


 int IGC_CTRL ;
 int IGC_CTRL_PHY_RST ;
 scalar_t__ igc_check_reset_block (struct igc_hw*) ;
 int rd32 (int ) ;
 scalar_t__ stub1 (struct igc_hw*) ;
 int stub2 (struct igc_hw*) ;
 int udelay (int ) ;
 int usleep_range (int,int) ;
 int wr32 (int ,int) ;
 int wrfl () ;

s32 igc_phy_hw_reset(struct igc_hw *hw)
{
 struct igc_phy_info *phy = &hw->phy;
 s32 ret_val;
 u32 ctrl;

 ret_val = igc_check_reset_block(hw);
 if (ret_val) {
  ret_val = 0;
  goto out;
 }

 ret_val = phy->ops.acquire(hw);
 if (ret_val)
  goto out;

 ctrl = rd32(IGC_CTRL);
 wr32(IGC_CTRL, ctrl | IGC_CTRL_PHY_RST);
 wrfl();

 udelay(phy->reset_delay_us);

 wr32(IGC_CTRL, ctrl);
 wrfl();

 usleep_range(1500, 2000);

 phy->ops.release(hw);

out:
 return ret_val;
}
