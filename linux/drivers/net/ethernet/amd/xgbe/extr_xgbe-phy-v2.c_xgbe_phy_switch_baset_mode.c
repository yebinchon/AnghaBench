
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {struct xgbe_phy_data* phy_data; } ;
struct xgbe_phy_data {scalar_t__ port_mode; } ;
typedef enum xgbe_mode { ____Placeholder_xgbe_mode } xgbe_mode ;





 scalar_t__ XGBE_PORT_MODE_10GBASE_T ;
 int xgbe_phy_cur_mode (struct xgbe_prv_data*) ;

__attribute__((used)) static enum xgbe_mode xgbe_phy_switch_baset_mode(struct xgbe_prv_data *pdata)
{
 struct xgbe_phy_data *phy_data = pdata->phy_data;


 if (phy_data->port_mode != XGBE_PORT_MODE_10GBASE_T)
  return xgbe_phy_cur_mode(pdata);

 switch (xgbe_phy_cur_mode(pdata)) {
 case 129:
 case 128:
  return 130;
 case 130:
 default:
  return 128;
 }
}
