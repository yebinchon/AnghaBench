
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_3__ {scalar_t__ (* read_reg ) (struct ixgbe_hw*,int ,int ,int*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ phy; } ;
typedef scalar_t__ s32 ;


 int IXGBE_MDIO_AUTO_NEG_LINK_STATUS ;
 int MDIO_MMD_AN ;
 int MDIO_STAT1 ;
 scalar_t__ stub1 (struct ixgbe_hw*,int ,int ,int*) ;
 scalar_t__ stub2 (struct ixgbe_hw*,int ,int ,int*) ;

__attribute__((used)) static s32 ixgbe_ext_phy_t_x550em_get_link(struct ixgbe_hw *hw, bool *link_up)
{
 u32 ret;
 u16 autoneg_status;

 *link_up = 0;


 ret = hw->phy.ops.read_reg(hw, MDIO_STAT1, MDIO_MMD_AN,
       &autoneg_status);
 if (ret)
  return ret;

 ret = hw->phy.ops.read_reg(hw, MDIO_STAT1, MDIO_MMD_AN,
       &autoneg_status);
 if (ret)
  return ret;

 *link_up = !!(autoneg_status & IXGBE_MDIO_AUTO_NEG_LINK_STATUS);

 return 0;
}
