
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_5__ {int (* write_reg ) (struct ixgbe_hw*,int ,int ,int) ;int (* read_reg ) (struct ixgbe_hw*,int ,int ,int*) ;} ;
struct TYPE_6__ {int autoneg_advertised; TYPE_2__ ops; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_3__ phy; TYPE_1__ mac; } ;
typedef int s32 ;
typedef int ixgbe_link_speed ;


 int ADVERTISE_100FULL ;
 int ADVERTISE_100HALF ;
 int IXGBE_LINK_SPEED_100_FULL ;
 int IXGBE_LINK_SPEED_10GB_FULL ;
 int IXGBE_LINK_SPEED_1GB_FULL ;
 int IXGBE_LINK_SPEED_2_5GB_FULL ;
 int IXGBE_LINK_SPEED_5GB_FULL ;
 int IXGBE_MII_1GBASE_T_ADVERTISE ;
 int IXGBE_MII_2_5GBASE_T_ADVERTISE ;
 int IXGBE_MII_5GBASE_T_ADVERTISE ;
 int IXGBE_MII_AUTONEG_REG ;
 int IXGBE_MII_AUTONEG_VENDOR_PROVISION_1_REG ;
 int MDIO_AN_10GBT_CTRL ;
 int MDIO_AN_10GBT_CTRL_ADV10G ;
 int MDIO_AN_ADVERTISE ;
 int MDIO_AN_CTRL1_RESTART ;
 int MDIO_CTRL1 ;
 int MDIO_MMD_AN ;
 scalar_t__ ixgbe_check_reset_blocked (struct ixgbe_hw*) ;
 int ixgbe_get_copper_link_capabilities_generic (struct ixgbe_hw*,int*,int*) ;
 scalar_t__ ixgbe_mac_X550 ;
 int stub1 (struct ixgbe_hw*,int ,int ,int*) ;
 int stub2 (struct ixgbe_hw*,int ,int ,int) ;
 int stub3 (struct ixgbe_hw*,int ,int ,int*) ;
 int stub4 (struct ixgbe_hw*,int ,int ,int) ;
 int stub5 (struct ixgbe_hw*,int ,int ,int*) ;
 int stub6 (struct ixgbe_hw*,int ,int ,int) ;
 int stub7 (struct ixgbe_hw*,int ,int ,int*) ;
 int stub8 (struct ixgbe_hw*,int ,int ,int) ;

s32 ixgbe_setup_phy_link_generic(struct ixgbe_hw *hw)
{
 s32 status = 0;
 u16 autoneg_reg = IXGBE_MII_AUTONEG_REG;
 bool autoneg = 0;
 ixgbe_link_speed speed;

 ixgbe_get_copper_link_capabilities_generic(hw, &speed, &autoneg);


 hw->phy.ops.read_reg(hw, MDIO_AN_10GBT_CTRL, MDIO_MMD_AN, &autoneg_reg);

 autoneg_reg &= ~MDIO_AN_10GBT_CTRL_ADV10G;
 if ((hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_10GB_FULL) &&
     (speed & IXGBE_LINK_SPEED_10GB_FULL))
  autoneg_reg |= MDIO_AN_10GBT_CTRL_ADV10G;

 hw->phy.ops.write_reg(hw, MDIO_AN_10GBT_CTRL, MDIO_MMD_AN, autoneg_reg);

 hw->phy.ops.read_reg(hw, IXGBE_MII_AUTONEG_VENDOR_PROVISION_1_REG,
        MDIO_MMD_AN, &autoneg_reg);

 if (hw->mac.type == ixgbe_mac_X550) {

  autoneg_reg &= ~IXGBE_MII_5GBASE_T_ADVERTISE;
  if ((hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_5GB_FULL) &&
      (speed & IXGBE_LINK_SPEED_5GB_FULL))
   autoneg_reg |= IXGBE_MII_5GBASE_T_ADVERTISE;


  autoneg_reg &= ~IXGBE_MII_2_5GBASE_T_ADVERTISE;
  if ((hw->phy.autoneg_advertised &
       IXGBE_LINK_SPEED_2_5GB_FULL) &&
      (speed & IXGBE_LINK_SPEED_2_5GB_FULL))
   autoneg_reg |= IXGBE_MII_2_5GBASE_T_ADVERTISE;
 }


 autoneg_reg &= ~IXGBE_MII_1GBASE_T_ADVERTISE;
 if ((hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_1GB_FULL) &&
     (speed & IXGBE_LINK_SPEED_1GB_FULL))
  autoneg_reg |= IXGBE_MII_1GBASE_T_ADVERTISE;

 hw->phy.ops.write_reg(hw, IXGBE_MII_AUTONEG_VENDOR_PROVISION_1_REG,
         MDIO_MMD_AN, autoneg_reg);


 hw->phy.ops.read_reg(hw, MDIO_AN_ADVERTISE, MDIO_MMD_AN, &autoneg_reg);

 autoneg_reg &= ~(ADVERTISE_100FULL | ADVERTISE_100HALF);
 if ((hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_100_FULL) &&
     (speed & IXGBE_LINK_SPEED_100_FULL))
  autoneg_reg |= ADVERTISE_100FULL;

 hw->phy.ops.write_reg(hw, MDIO_AN_ADVERTISE, MDIO_MMD_AN, autoneg_reg);


 if (ixgbe_check_reset_blocked(hw))
  return 0;


 hw->phy.ops.read_reg(hw, MDIO_CTRL1,
        MDIO_MMD_AN, &autoneg_reg);

 autoneg_reg |= MDIO_AN_CTRL1_RESTART;

 hw->phy.ops.write_reg(hw, MDIO_CTRL1,
         MDIO_MMD_AN, autoneg_reg);

 return status;
}
