
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {struct xgbe_phy_data* phy_data; } ;
struct xgbe_phy_data {int port_mode; } ;
typedef enum xgbe_mode { ____Placeholder_xgbe_mode } xgbe_mode ;
 int xgbe_phy_use_baset_mode (struct xgbe_prv_data*,int) ;
 int xgbe_phy_use_basex_mode (struct xgbe_prv_data*,int) ;
 int xgbe_phy_use_bp_2500_mode (struct xgbe_prv_data*,int) ;
 int xgbe_phy_use_bp_mode (struct xgbe_prv_data*,int) ;
 int xgbe_phy_use_sfp_mode (struct xgbe_prv_data*,int) ;

__attribute__((used)) static bool xgbe_phy_use_mode(struct xgbe_prv_data *pdata, enum xgbe_mode mode)
{
 struct xgbe_phy_data *phy_data = pdata->phy_data;

 switch (phy_data->port_mode) {
 case 131:
  return xgbe_phy_use_bp_mode(pdata, mode);
 case 130:
  return xgbe_phy_use_bp_2500_mode(pdata, mode);
 case 135:
 case 129:
 case 132:
  return xgbe_phy_use_baset_mode(pdata, mode);
 case 134:
 case 133:
  return xgbe_phy_use_basex_mode(pdata, mode);
 case 128:
  return xgbe_phy_use_sfp_mode(pdata, mode);
 default:
  return 0;
 }
}
