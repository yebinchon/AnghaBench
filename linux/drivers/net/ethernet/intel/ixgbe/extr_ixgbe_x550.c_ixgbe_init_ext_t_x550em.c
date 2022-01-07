
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {scalar_t__ (* write_reg ) (struct ixgbe_hw*,int ,int ,int) ;scalar_t__ (* read_reg ) (struct ixgbe_hw*,int ,int ,int*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ phy; } ;
typedef scalar_t__ s32 ;


 int IXGBE_MDIO_GLOBAL_RES_PR_10 ;
 int IXGBE_MDIO_POWER_UP_STALL ;
 int IXGBE_MDIO_TX_VENDOR_ALARMS_3 ;
 int IXGBE_MDIO_TX_VENDOR_ALARMS_3_RST_MASK ;
 int MDIO_MMD_PMAPMD ;
 int MDIO_MMD_VEND1 ;
 scalar_t__ stub1 (struct ixgbe_hw*,int ,int ,int*) ;
 scalar_t__ stub2 (struct ixgbe_hw*,int ,int ,int*) ;
 scalar_t__ stub3 (struct ixgbe_hw*,int ,int ,int) ;

__attribute__((used)) static s32 ixgbe_init_ext_t_x550em(struct ixgbe_hw *hw)
{
 s32 status;
 u16 reg;

 status = hw->phy.ops.read_reg(hw,
          IXGBE_MDIO_TX_VENDOR_ALARMS_3,
          MDIO_MMD_PMAPMD,
          &reg);
 if (status)
  return status;




 if (reg & IXGBE_MDIO_TX_VENDOR_ALARMS_3_RST_MASK) {
  status = hw->phy.ops.read_reg(hw,
     IXGBE_MDIO_GLOBAL_RES_PR_10,
     MDIO_MMD_VEND1,
     &reg);
  if (status)
   return status;

  reg &= ~IXGBE_MDIO_POWER_UP_STALL;

  status = hw->phy.ops.write_reg(hw,
     IXGBE_MDIO_GLOBAL_RES_PR_10,
     MDIO_MMD_VEND1,
     reg);
  if (status)
   return status;
 }

 return status;
}
