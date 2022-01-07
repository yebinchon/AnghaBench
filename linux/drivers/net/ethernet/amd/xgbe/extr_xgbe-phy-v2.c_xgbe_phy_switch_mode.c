
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {struct xgbe_phy_data* phy_data; } ;
struct xgbe_phy_data {int port_mode; } ;
typedef enum xgbe_mode { ____Placeholder_xgbe_mode } xgbe_mode ;


 int XGBE_MODE_UNKNOWN ;
 int xgbe_phy_cur_mode (struct xgbe_prv_data*) ;
 int xgbe_phy_switch_baset_mode (struct xgbe_prv_data*) ;
 int xgbe_phy_switch_bp_2500_mode (struct xgbe_prv_data*) ;
 int xgbe_phy_switch_bp_mode (struct xgbe_prv_data*) ;

__attribute__((used)) static enum xgbe_mode xgbe_phy_switch_mode(struct xgbe_prv_data *pdata)
{
 struct xgbe_phy_data *phy_data = pdata->phy_data;

 switch (phy_data->port_mode) {
 case 131:
  return xgbe_phy_switch_bp_mode(pdata);
 case 130:
  return xgbe_phy_switch_bp_2500_mode(pdata);
 case 135:
 case 129:
 case 132:
  return xgbe_phy_switch_baset_mode(pdata);
 case 134:
 case 133:
 case 128:

  return xgbe_phy_cur_mode(pdata);
 default:
  return XGBE_MODE_UNKNOWN;
 }
}
