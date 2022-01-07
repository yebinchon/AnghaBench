
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int an_mode; } ;
typedef enum xgbe_mode { ____Placeholder_xgbe_mode } xgbe_mode ;






 int XGBE_MODE_UNKNOWN ;
 int xgbe_phy_an37_outcome (struct xgbe_prv_data*) ;
 int xgbe_phy_an37_sgmii_outcome (struct xgbe_prv_data*) ;
 int xgbe_phy_an73_outcome (struct xgbe_prv_data*) ;
 int xgbe_phy_an73_redrv_outcome (struct xgbe_prv_data*) ;

__attribute__((used)) static enum xgbe_mode xgbe_phy_an_outcome(struct xgbe_prv_data *pdata)
{
 switch (pdata->an_mode) {
 case 129:
  return xgbe_phy_an73_outcome(pdata);
 case 128:
  return xgbe_phy_an73_redrv_outcome(pdata);
 case 131:
  return xgbe_phy_an37_outcome(pdata);
 case 130:
  return xgbe_phy_an37_sgmii_outcome(pdata);
 default:
  return XGBE_MODE_UNKNOWN;
 }
}
