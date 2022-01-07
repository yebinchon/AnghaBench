
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct e1000_hw {scalar_t__ phy_type; } ;
typedef scalar_t__ s32 ;
typedef int e1000_rev_polarity ;


 scalar_t__ E1000_SUCCESS ;
 int IGP01E1000_PHY_PCS_INIT_REG ;
 int IGP01E1000_PHY_POLARITY_MASK ;
 int IGP01E1000_PHY_PORT_STATUS ;
 int IGP01E1000_PSSR_POLARITY_REVERSED ;
 int IGP01E1000_PSSR_SPEED_1000MBPS ;
 int IGP01E1000_PSSR_SPEED_MASK ;
 int M88E1000_PHY_SPEC_STATUS ;
 int M88E1000_PSSR_REV_POLARITY ;
 int M88E1000_PSSR_REV_POLARITY_SHIFT ;
 scalar_t__ e1000_phy_igp ;
 scalar_t__ e1000_phy_m88 ;
 scalar_t__ e1000_read_phy_reg (struct e1000_hw*,int ,int*) ;
 int e1000_rev_polarity_normal ;
 int e1000_rev_polarity_reversed ;

__attribute__((used)) static s32 e1000_check_polarity(struct e1000_hw *hw,
    e1000_rev_polarity *polarity)
{
 s32 ret_val;
 u16 phy_data;

 if (hw->phy_type == e1000_phy_m88) {

  ret_val = e1000_read_phy_reg(hw, M88E1000_PHY_SPEC_STATUS,
          &phy_data);
  if (ret_val)
   return ret_val;
  *polarity = ((phy_data & M88E1000_PSSR_REV_POLARITY) >>
        M88E1000_PSSR_REV_POLARITY_SHIFT) ?
      e1000_rev_polarity_reversed : e1000_rev_polarity_normal;

 } else if (hw->phy_type == e1000_phy_igp) {

  ret_val = e1000_read_phy_reg(hw, IGP01E1000_PHY_PORT_STATUS,
          &phy_data);
  if (ret_val)
   return ret_val;




  if ((phy_data & IGP01E1000_PSSR_SPEED_MASK) ==
      IGP01E1000_PSSR_SPEED_1000MBPS) {

   ret_val =
       e1000_read_phy_reg(hw, IGP01E1000_PHY_PCS_INIT_REG,
            &phy_data);
   if (ret_val)
    return ret_val;


   *polarity = (phy_data & IGP01E1000_PHY_POLARITY_MASK) ?
       e1000_rev_polarity_reversed :
       e1000_rev_polarity_normal;
  } else {



   *polarity =
       (phy_data & IGP01E1000_PSSR_POLARITY_REVERSED) ?
       e1000_rev_polarity_reversed :
       e1000_rev_polarity_normal;
  }
 }
 return E1000_SUCCESS;
}
