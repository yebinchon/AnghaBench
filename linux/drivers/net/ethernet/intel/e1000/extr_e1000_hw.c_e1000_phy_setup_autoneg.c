
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct e1000_hw {scalar_t__ phy_type; int autoneg_advertised; int fc; } ;
typedef scalar_t__ s32 ;


 int ADVERTISE_1000_FULL ;
 int ADVERTISE_1000_HALF ;
 int ADVERTISE_100_FULL ;
 int ADVERTISE_100_HALF ;
 int ADVERTISE_10_FULL ;
 int ADVERTISE_10_HALF ;
 int CR_1000T_FD_CAPS ;
 scalar_t__ E1000_ERR_CONFIG ;




 scalar_t__ E1000_SUCCESS ;
 int NWAY_AR_100TX_FD_CAPS ;
 int NWAY_AR_100TX_HD_CAPS ;
 int NWAY_AR_10T_FD_CAPS ;
 int NWAY_AR_10T_HD_CAPS ;
 int NWAY_AR_ASM_DIR ;
 int NWAY_AR_PAUSE ;
 int PHY_1000T_CTRL ;
 int PHY_AUTONEG_ADV ;
 int REG4_SPEED_MASK ;
 int REG9_SPEED_MASK ;
 scalar_t__ e1000_phy_8201 ;
 scalar_t__ e1000_read_phy_reg (struct e1000_hw*,int ,int*) ;
 scalar_t__ e1000_write_phy_reg (struct e1000_hw*,int ,int) ;
 int e_dbg (char*,...) ;

s32 e1000_phy_setup_autoneg(struct e1000_hw *hw)
{
 s32 ret_val;
 u16 mii_autoneg_adv_reg;
 u16 mii_1000t_ctrl_reg;


 ret_val = e1000_read_phy_reg(hw, PHY_AUTONEG_ADV, &mii_autoneg_adv_reg);
 if (ret_val)
  return ret_val;


 ret_val = e1000_read_phy_reg(hw, PHY_1000T_CTRL, &mii_1000t_ctrl_reg);
 if (ret_val)
  return ret_val;
 else if (hw->phy_type == e1000_phy_8201)
  mii_1000t_ctrl_reg &= ~REG9_SPEED_MASK;
 mii_autoneg_adv_reg &= ~REG4_SPEED_MASK;
 mii_1000t_ctrl_reg &= ~REG9_SPEED_MASK;

 e_dbg("autoneg_advertised %x\n", hw->autoneg_advertised);


 if (hw->autoneg_advertised & ADVERTISE_10_HALF) {
  e_dbg("Advertise 10mb Half duplex\n");
  mii_autoneg_adv_reg |= NWAY_AR_10T_HD_CAPS;
 }


 if (hw->autoneg_advertised & ADVERTISE_10_FULL) {
  e_dbg("Advertise 10mb Full duplex\n");
  mii_autoneg_adv_reg |= NWAY_AR_10T_FD_CAPS;
 }


 if (hw->autoneg_advertised & ADVERTISE_100_HALF) {
  e_dbg("Advertise 100mb Half duplex\n");
  mii_autoneg_adv_reg |= NWAY_AR_100TX_HD_CAPS;
 }


 if (hw->autoneg_advertised & ADVERTISE_100_FULL) {
  e_dbg("Advertise 100mb Full duplex\n");
  mii_autoneg_adv_reg |= NWAY_AR_100TX_FD_CAPS;
 }


 if (hw->autoneg_advertised & ADVERTISE_1000_HALF) {
  e_dbg
      ("Advertise 1000mb Half duplex requested, request denied!\n");
 }


 if (hw->autoneg_advertised & ADVERTISE_1000_FULL) {
  e_dbg("Advertise 1000mb Full duplex\n");
  mii_1000t_ctrl_reg |= CR_1000T_FD_CAPS;
 }
 switch (hw->fc) {
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
  e_dbg("Flow control param set incorrectly\n");
  return -E1000_ERR_CONFIG;
 }

 ret_val = e1000_write_phy_reg(hw, PHY_AUTONEG_ADV, mii_autoneg_adv_reg);
 if (ret_val)
  return ret_val;

 e_dbg("Auto-Neg Advertising %x\n", mii_autoneg_adv_reg);

 if (hw->phy_type == e1000_phy_8201) {
  mii_1000t_ctrl_reg = 0;
 } else {
  ret_val = e1000_write_phy_reg(hw, PHY_1000T_CTRL,
           mii_1000t_ctrl_reg);
  if (ret_val)
   return ret_val;
 }

 return E1000_SUCCESS;
}
