
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_phy_data {int dummy; } ;
typedef enum xgbe_mode { ____Placeholder_xgbe_mode } xgbe_mode ;






 int XGBE_MODE_KR ;
 int XGBE_MODE_KX_2500 ;
 int XGBE_MODE_SGMII_100 ;
 int XGBE_MODE_SGMII_1000 ;
 int XGBE_MODE_UNKNOWN ;

__attribute__((used)) static enum xgbe_mode xgbe_phy_get_baset_mode(struct xgbe_phy_data *phy_data,
           int speed)
{
 switch (speed) {
 case 131:
  return XGBE_MODE_SGMII_100;
 case 130:
  return XGBE_MODE_SGMII_1000;
 case 128:
  return XGBE_MODE_KX_2500;
 case 129:
  return XGBE_MODE_KR;
 default:
  return XGBE_MODE_UNKNOWN;
 }
}
