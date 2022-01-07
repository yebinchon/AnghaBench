
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_phy_data {int sfp_base; } ;
typedef enum xgbe_an_mode { ____Placeholder_xgbe_an_mode } xgbe_an_mode ;


 int XGBE_AN_MODE_CL37 ;
 int XGBE_AN_MODE_CL37_SGMII ;
 int XGBE_AN_MODE_NONE ;





__attribute__((used)) static enum xgbe_an_mode xgbe_phy_an_sfp_mode(struct xgbe_phy_data *phy_data)
{
 switch (phy_data->sfp_base) {
 case 128:
  return XGBE_AN_MODE_CL37_SGMII;
 case 129:
 case 130:
 case 131:
  return XGBE_AN_MODE_CL37;
 default:
  return XGBE_AN_MODE_NONE;
 }
}
