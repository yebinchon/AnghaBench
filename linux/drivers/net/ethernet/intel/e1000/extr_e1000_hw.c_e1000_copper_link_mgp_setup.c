
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct e1000_hw {int mdix; int disable_polarity_correction; scalar_t__ phy_revision; scalar_t__ phy_id; scalar_t__ phy_reset_disable; } ;
typedef scalar_t__ s32 ;


 scalar_t__ E1000_REVISION_2 ;
 scalar_t__ E1000_SUCCESS ;
 int M88E1000_EPSCR_MASTER_DOWNSHIFT_1X ;
 int M88E1000_EPSCR_MASTER_DOWNSHIFT_MASK ;
 int M88E1000_EPSCR_SLAVE_DOWNSHIFT_1X ;
 int M88E1000_EPSCR_SLAVE_DOWNSHIFT_MASK ;
 int M88E1000_EPSCR_TX_CLK_25 ;
 int M88E1000_EXT_PHY_SPEC_CTRL ;
 int M88E1000_PHY_SPEC_CTRL ;
 int M88E1000_PSCR_ASSERT_CRS_ON_TX ;
 int M88E1000_PSCR_AUTO_X_1000T ;
 int M88E1000_PSCR_AUTO_X_MODE ;
 int M88E1000_PSCR_MDIX_MANUAL_MODE ;
 int M88E1000_PSCR_MDI_MANUAL_MODE ;
 int M88E1000_PSCR_POLARITY_REVERSAL ;
 scalar_t__ M88E1011_I_REV_4 ;
 scalar_t__ M88E1111_I_PHY_ID ;
 int M88EC018_EPSCR_DOWNSHIFT_COUNTER_5X ;
 int M88EC018_EPSCR_DOWNSHIFT_COUNTER_MASK ;
 scalar_t__ e1000_phy_reset (struct e1000_hw*) ;
 scalar_t__ e1000_read_phy_reg (struct e1000_hw*,int ,int*) ;
 scalar_t__ e1000_write_phy_reg (struct e1000_hw*,int ,int) ;
 int e_dbg (char*) ;

__attribute__((used)) static s32 e1000_copper_link_mgp_setup(struct e1000_hw *hw)
{
 s32 ret_val;
 u16 phy_data;

 if (hw->phy_reset_disable)
  return E1000_SUCCESS;


 ret_val = e1000_read_phy_reg(hw, M88E1000_PHY_SPEC_CTRL, &phy_data);
 if (ret_val)
  return ret_val;

 phy_data |= M88E1000_PSCR_ASSERT_CRS_ON_TX;
 phy_data &= ~M88E1000_PSCR_AUTO_X_MODE;

 switch (hw->mdix) {
 case 1:
  phy_data |= M88E1000_PSCR_MDI_MANUAL_MODE;
  break;
 case 2:
  phy_data |= M88E1000_PSCR_MDIX_MANUAL_MODE;
  break;
 case 3:
  phy_data |= M88E1000_PSCR_AUTO_X_1000T;
  break;
 case 0:
 default:
  phy_data |= M88E1000_PSCR_AUTO_X_MODE;
  break;
 }







 phy_data &= ~M88E1000_PSCR_POLARITY_REVERSAL;
 if (hw->disable_polarity_correction == 1)
  phy_data |= M88E1000_PSCR_POLARITY_REVERSAL;
 ret_val = e1000_write_phy_reg(hw, M88E1000_PHY_SPEC_CTRL, phy_data);
 if (ret_val)
  return ret_val;

 if (hw->phy_revision < M88E1011_I_REV_4) {



  ret_val =
      e1000_read_phy_reg(hw, M88E1000_EXT_PHY_SPEC_CTRL,
           &phy_data);
  if (ret_val)
   return ret_val;

  phy_data |= M88E1000_EPSCR_TX_CLK_25;

  if ((hw->phy_revision == E1000_REVISION_2) &&
      (hw->phy_id == M88E1111_I_PHY_ID)) {

   phy_data &= ~(M88EC018_EPSCR_DOWNSHIFT_COUNTER_MASK);
   phy_data |= M88EC018_EPSCR_DOWNSHIFT_COUNTER_5X;
   ret_val = e1000_write_phy_reg(hw,
            M88E1000_EXT_PHY_SPEC_CTRL,
            phy_data);
   if (ret_val)
    return ret_val;
  } else {

   phy_data &= ~(M88E1000_EPSCR_MASTER_DOWNSHIFT_MASK |
          M88E1000_EPSCR_SLAVE_DOWNSHIFT_MASK);
   phy_data |= (M88E1000_EPSCR_MASTER_DOWNSHIFT_1X |
         M88E1000_EPSCR_SLAVE_DOWNSHIFT_1X);
   ret_val = e1000_write_phy_reg(hw,
            M88E1000_EXT_PHY_SPEC_CTRL,
            phy_data);
   if (ret_val)
    return ret_val;
  }
 }


 ret_val = e1000_phy_reset(hw);
 if (ret_val) {
  e_dbg("Error Resetting the PHY\n");
  return ret_val;
 }

 return E1000_SUCCESS;
}
