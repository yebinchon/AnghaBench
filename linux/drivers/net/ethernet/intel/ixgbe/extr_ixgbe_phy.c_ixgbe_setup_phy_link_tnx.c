
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int (* write_reg ) (struct ixgbe_hw*,int ,int ,int) ;int (* read_reg ) (struct ixgbe_hw*,int ,int ,int*) ;} ;
struct TYPE_4__ {int autoneg_advertised; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ phy; } ;
typedef int s32 ;
typedef int ixgbe_link_speed ;


 int ADVERTISE_100FULL ;
 int ADVERTISE_100HALF ;
 int IXGBE_LINK_SPEED_100_FULL ;
 int IXGBE_LINK_SPEED_10GB_FULL ;
 int IXGBE_LINK_SPEED_1GB_FULL ;
 int IXGBE_MII_1GBASE_T_ADVERTISE_XNP_TX ;
 int IXGBE_MII_AUTONEG_REG ;
 int IXGBE_MII_AUTONEG_XNP_TX_REG ;
 int MDIO_AN_10GBT_CTRL ;
 int MDIO_AN_10GBT_CTRL_ADV10G ;
 int MDIO_AN_ADVERTISE ;
 int MDIO_AN_CTRL1_RESTART ;
 int MDIO_CTRL1 ;
 int MDIO_MMD_AN ;
 scalar_t__ ixgbe_check_reset_blocked (struct ixgbe_hw*) ;
 int ixgbe_get_copper_link_capabilities_generic (struct ixgbe_hw*,int*,int*) ;
 int stub1 (struct ixgbe_hw*,int ,int ,int*) ;
 int stub2 (struct ixgbe_hw*,int ,int ,int) ;
 int stub3 (struct ixgbe_hw*,int ,int ,int*) ;
 int stub4 (struct ixgbe_hw*,int ,int ,int) ;
 int stub5 (struct ixgbe_hw*,int ,int ,int*) ;
 int stub6 (struct ixgbe_hw*,int ,int ,int) ;
 int stub7 (struct ixgbe_hw*,int ,int ,int*) ;
 int stub8 (struct ixgbe_hw*,int ,int ,int) ;

s32 ixgbe_setup_phy_link_tnx(struct ixgbe_hw *hw)
{
 u16 autoneg_reg = IXGBE_MII_AUTONEG_REG;
 bool autoneg = 0;
 ixgbe_link_speed speed;

 ixgbe_get_copper_link_capabilities_generic(hw, &speed, &autoneg);

 if (speed & IXGBE_LINK_SPEED_10GB_FULL) {

  hw->phy.ops.read_reg(hw, MDIO_AN_10GBT_CTRL,
         MDIO_MMD_AN,
         &autoneg_reg);

  autoneg_reg &= ~MDIO_AN_10GBT_CTRL_ADV10G;
  if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_10GB_FULL)
   autoneg_reg |= MDIO_AN_10GBT_CTRL_ADV10G;

  hw->phy.ops.write_reg(hw, MDIO_AN_10GBT_CTRL,
          MDIO_MMD_AN,
          autoneg_reg);
 }

 if (speed & IXGBE_LINK_SPEED_1GB_FULL) {

  hw->phy.ops.read_reg(hw, IXGBE_MII_AUTONEG_XNP_TX_REG,
         MDIO_MMD_AN,
         &autoneg_reg);

  autoneg_reg &= ~IXGBE_MII_1GBASE_T_ADVERTISE_XNP_TX;
  if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_1GB_FULL)
   autoneg_reg |= IXGBE_MII_1GBASE_T_ADVERTISE_XNP_TX;

  hw->phy.ops.write_reg(hw, IXGBE_MII_AUTONEG_XNP_TX_REG,
          MDIO_MMD_AN,
          autoneg_reg);
 }

 if (speed & IXGBE_LINK_SPEED_100_FULL) {

  hw->phy.ops.read_reg(hw, MDIO_AN_ADVERTISE,
         MDIO_MMD_AN,
         &autoneg_reg);

  autoneg_reg &= ~(ADVERTISE_100FULL |
     ADVERTISE_100HALF);
  if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_100_FULL)
   autoneg_reg |= ADVERTISE_100FULL;

  hw->phy.ops.write_reg(hw, MDIO_AN_ADVERTISE,
          MDIO_MMD_AN,
          autoneg_reg);
 }


 if (ixgbe_check_reset_blocked(hw))
  return 0;


 hw->phy.ops.read_reg(hw, MDIO_CTRL1,
        MDIO_MMD_AN, &autoneg_reg);

 autoneg_reg |= MDIO_AN_CTRL1_RESTART;

 hw->phy.ops.write_reg(hw, MDIO_CTRL1,
         MDIO_MMD_AN, autoneg_reg);
 return 0;
}
