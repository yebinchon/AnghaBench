
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;
typedef enum xgbe_mode { ____Placeholder_xgbe_mode } xgbe_mode ;




 int xgbe_phy_cur_mode (struct xgbe_prv_data*) ;

__attribute__((used)) static enum xgbe_mode xgbe_phy_switch_bp_mode(struct xgbe_prv_data *pdata)
{

 switch (xgbe_phy_cur_mode(pdata)) {
 case 128:
  return 129;
 case 129:
 default:
  return 128;
 }
}
