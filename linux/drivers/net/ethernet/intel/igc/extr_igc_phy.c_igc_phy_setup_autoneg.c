
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {scalar_t__ (* write_reg ) (struct igc_hw*,int,int) ;scalar_t__ (* read_reg ) (struct igc_hw*,int,int*) ;} ;
struct igc_phy_info {int autoneg_advertised; int autoneg_mask; scalar_t__ id; TYPE_2__ ops; } ;
struct TYPE_3__ {int current_mode; } ;
struct igc_hw {struct igc_phy_info phy; TYPE_1__ fc; } ;
typedef scalar_t__ s32 ;


 int ADVERTISE_1000_FULL ;
 int ADVERTISE_1000_HALF ;
 int ADVERTISE_100_FULL ;
 int ADVERTISE_100_HALF ;
 int ADVERTISE_10_FULL ;
 int ADVERTISE_10_HALF ;
 int ADVERTISE_2500_FULL ;
 int ADVERTISE_2500_HALF ;
 int ANEG_MULTIGBT_AN_CTRL ;
 int CR_1000T_FD_CAPS ;
 int CR_1000T_HD_CAPS ;
 int CR_2500T_FD_CAPS ;
 scalar_t__ I225_I_PHY_ID ;
 scalar_t__ IGC_ERR_CONFIG ;
 int MMD_DEVADDR_SHIFT ;
 int NWAY_AR_100TX_FD_CAPS ;
 int NWAY_AR_100TX_HD_CAPS ;
 int NWAY_AR_10T_FD_CAPS ;
 int NWAY_AR_10T_HD_CAPS ;
 int NWAY_AR_ASM_DIR ;
 int NWAY_AR_PAUSE ;
 int PHY_1000T_CTRL ;
 int PHY_AUTONEG_ADV ;
 int STANDARD_AN_REG_MASK ;
 int hw_dbg (char*,...) ;




 scalar_t__ stub1 (struct igc_hw*,int,int*) ;
 scalar_t__ stub2 (struct igc_hw*,int,int*) ;
 scalar_t__ stub3 (struct igc_hw*,int,int*) ;
 scalar_t__ stub4 (struct igc_hw*,int,int) ;
 scalar_t__ stub5 (struct igc_hw*,int,int) ;
 scalar_t__ stub6 (struct igc_hw*,int,int) ;

__attribute__((used)) static s32 igc_phy_setup_autoneg(struct igc_hw *hw)
{
 struct igc_phy_info *phy = &hw->phy;
 u16 aneg_multigbt_an_ctrl = 0;
 u16 mii_1000t_ctrl_reg = 0;
 u16 mii_autoneg_adv_reg;
 s32 ret_val;

 phy->autoneg_advertised &= phy->autoneg_mask;


 ret_val = phy->ops.read_reg(hw, PHY_AUTONEG_ADV, &mii_autoneg_adv_reg);
 if (ret_val)
  return ret_val;

 if (phy->autoneg_mask & ADVERTISE_1000_FULL) {

  ret_val = phy->ops.read_reg(hw, PHY_1000T_CTRL,
         &mii_1000t_ctrl_reg);
  if (ret_val)
   return ret_val;
 }

 if ((phy->autoneg_mask & ADVERTISE_2500_FULL) &&
     hw->phy.id == I225_I_PHY_ID) {

  ret_val = phy->ops.read_reg(hw, (STANDARD_AN_REG_MASK <<
         MMD_DEVADDR_SHIFT) |
         ANEG_MULTIGBT_AN_CTRL,
         &aneg_multigbt_an_ctrl);

  if (ret_val)
   return ret_val;
 }
 mii_autoneg_adv_reg &= ~(NWAY_AR_100TX_FD_CAPS |
     NWAY_AR_100TX_HD_CAPS |
     NWAY_AR_10T_FD_CAPS |
     NWAY_AR_10T_HD_CAPS);
 mii_1000t_ctrl_reg &= ~(CR_1000T_HD_CAPS | CR_1000T_FD_CAPS);

 hw_dbg("autoneg_advertised %x\n", phy->autoneg_advertised);


 if (phy->autoneg_advertised & ADVERTISE_10_HALF) {
  hw_dbg("Advertise 10mb Half duplex\n");
  mii_autoneg_adv_reg |= NWAY_AR_10T_HD_CAPS;
 }


 if (phy->autoneg_advertised & ADVERTISE_10_FULL) {
  hw_dbg("Advertise 10mb Full duplex\n");
  mii_autoneg_adv_reg |= NWAY_AR_10T_FD_CAPS;
 }


 if (phy->autoneg_advertised & ADVERTISE_100_HALF) {
  hw_dbg("Advertise 100mb Half duplex\n");
  mii_autoneg_adv_reg |= NWAY_AR_100TX_HD_CAPS;
 }


 if (phy->autoneg_advertised & ADVERTISE_100_FULL) {
  hw_dbg("Advertise 100mb Full duplex\n");
  mii_autoneg_adv_reg |= NWAY_AR_100TX_FD_CAPS;
 }


 if (phy->autoneg_advertised & ADVERTISE_1000_HALF)
  hw_dbg("Advertise 1000mb Half duplex request denied!\n");


 if (phy->autoneg_advertised & ADVERTISE_1000_FULL) {
  hw_dbg("Advertise 1000mb Full duplex\n");
  mii_1000t_ctrl_reg |= CR_1000T_FD_CAPS;
 }


 if (phy->autoneg_advertised & ADVERTISE_2500_HALF)
  hw_dbg("Advertise 2500mb Half duplex request denied!\n");


 if (phy->autoneg_advertised & ADVERTISE_2500_FULL) {
  hw_dbg("Advertise 2500mb Full duplex\n");
  aneg_multigbt_an_ctrl |= CR_2500T_FD_CAPS;
 } else {
  aneg_multigbt_an_ctrl &= ~CR_2500T_FD_CAPS;
 }
 switch (hw->fc.current_mode) {
 case 130:



  mii_autoneg_adv_reg &= ~(NWAY_AR_ASM_DIR | NWAY_AR_PAUSE);
  break;
 case 129:
  mii_autoneg_adv_reg |= (NWAY_AR_ASM_DIR | NWAY_AR_PAUSE);
  break;
 case 128:



  mii_autoneg_adv_reg |= NWAY_AR_ASM_DIR;
  mii_autoneg_adv_reg &= ~NWAY_AR_PAUSE;
  break;
 case 131:



  mii_autoneg_adv_reg |= (NWAY_AR_ASM_DIR | NWAY_AR_PAUSE);
  break;
 default:
  hw_dbg("Flow control param set incorrectly\n");
  return -IGC_ERR_CONFIG;
 }

 ret_val = phy->ops.write_reg(hw, PHY_AUTONEG_ADV, mii_autoneg_adv_reg);
 if (ret_val)
  return ret_val;

 hw_dbg("Auto-Neg Advertising %x\n", mii_autoneg_adv_reg);

 if (phy->autoneg_mask & ADVERTISE_1000_FULL)
  ret_val = phy->ops.write_reg(hw, PHY_1000T_CTRL,
          mii_1000t_ctrl_reg);

 if ((phy->autoneg_mask & ADVERTISE_2500_FULL) &&
     hw->phy.id == I225_I_PHY_ID)
  ret_val = phy->ops.write_reg(hw,
          (STANDARD_AN_REG_MASK <<
          MMD_DEVADDR_SHIFT) |
          ANEG_MULTIGBT_AN_CTRL,
          aneg_multigbt_an_ctrl);

 return ret_val;
}
