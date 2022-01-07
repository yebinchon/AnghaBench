
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_3__ {scalar_t__ (* read_reg ) (struct igc_hw*,int ,scalar_t__*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct igc_hw {TYPE_2__ phy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ MII_SR_AUTONEG_COMPLETE ;
 scalar_t__ PHY_AUTO_NEG_LIMIT ;
 int PHY_STATUS ;
 int msleep (int) ;
 scalar_t__ stub1 (struct igc_hw*,int ,scalar_t__*) ;
 scalar_t__ stub2 (struct igc_hw*,int ,scalar_t__*) ;

__attribute__((used)) static s32 igc_wait_autoneg(struct igc_hw *hw)
{
 u16 i, phy_status;
 s32 ret_val = 0;


 for (i = PHY_AUTO_NEG_LIMIT; i > 0; i--) {
  ret_val = hw->phy.ops.read_reg(hw, PHY_STATUS, &phy_status);
  if (ret_val)
   break;
  ret_val = hw->phy.ops.read_reg(hw, PHY_STATUS, &phy_status);
  if (ret_val)
   break;
  if (phy_status & MII_SR_AUTONEG_COMPLETE)
   break;
  msleep(100);
 }




 return ret_val;
}
