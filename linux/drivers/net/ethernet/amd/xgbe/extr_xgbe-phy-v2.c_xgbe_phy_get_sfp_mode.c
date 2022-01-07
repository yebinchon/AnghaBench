
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_phy_data {int sfp_base; } ;
typedef enum xgbe_mode { ____Placeholder_xgbe_mode } xgbe_mode ;






 int XGBE_MODE_SFI ;
 int XGBE_MODE_SGMII_100 ;
 int XGBE_MODE_SGMII_1000 ;
 int XGBE_MODE_UNKNOWN ;
 int XGBE_MODE_X ;
 int XGBE_SFP_BASE_1000_T ;

__attribute__((used)) static enum xgbe_mode xgbe_phy_get_sfp_mode(struct xgbe_phy_data *phy_data,
         int speed)
{
 switch (speed) {
 case 131:
  return XGBE_MODE_SGMII_100;
 case 130:
  if (phy_data->sfp_base == XGBE_SFP_BASE_1000_T)
   return XGBE_MODE_SGMII_1000;
  else
   return XGBE_MODE_X;
 case 129:
 case 128:
  return XGBE_MODE_SFI;
 default:
  return XGBE_MODE_UNKNOWN;
 }
}
