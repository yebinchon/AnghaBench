
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int (* release ) (struct igc_hw*) ;scalar_t__ (* acquire ) (struct igc_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct igc_hw {TYPE_2__ phy; } ;
typedef scalar_t__ s32 ;


 int GPY_MMD_MASK ;
 int GPY_MMD_SHIFT ;
 int GPY_REG_MASK ;
 scalar_t__ igc_read_phy_reg_mdic (struct igc_hw*,int,int *) ;
 scalar_t__ igc_read_xmdio_reg (struct igc_hw*,int ,int,int *) ;
 scalar_t__ stub1 (struct igc_hw*) ;
 int stub2 (struct igc_hw*) ;

s32 igc_read_phy_reg_gpy(struct igc_hw *hw, u32 offset, u16 *data)
{
 u8 dev_addr = (offset & GPY_MMD_MASK) >> GPY_MMD_SHIFT;
 s32 ret_val;

 offset = offset & GPY_REG_MASK;

 if (!dev_addr) {
  ret_val = hw->phy.ops.acquire(hw);
  if (ret_val)
   return ret_val;
  ret_val = igc_read_phy_reg_mdic(hw, offset, data);
  if (ret_val)
   return ret_val;
  hw->phy.ops.release(hw);
 } else {
  ret_val = igc_read_xmdio_reg(hw, (u16)offset, dev_addr,
          data);
 }

 return ret_val;
}
