
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {struct xgbe_phy_data* phy_data; } ;
struct xgbe_phy_data {scalar_t__ speed_set; } ;
typedef enum xgbe_mode { ____Placeholder_xgbe_mode } xgbe_mode ;


 scalar_t__ XGBE_MODE_KR ;
 int XGBE_MODE_KX_1000 ;
 int XGBE_MODE_KX_2500 ;
 scalar_t__ XGBE_SPEEDSET_2500_10000 ;
 scalar_t__ xgbe_phy_cur_mode (struct xgbe_prv_data*) ;

__attribute__((used)) static enum xgbe_mode xgbe_phy_switch_mode(struct xgbe_prv_data *pdata)
{
 struct xgbe_phy_data *phy_data = pdata->phy_data;
 enum xgbe_mode mode;


 if (xgbe_phy_cur_mode(pdata) == XGBE_MODE_KR) {
  if (phy_data->speed_set == XGBE_SPEEDSET_2500_10000)
   mode = XGBE_MODE_KX_2500;
  else
   mode = XGBE_MODE_KX_1000;
 } else {
  mode = XGBE_MODE_KR;
 }

 return mode;
}
