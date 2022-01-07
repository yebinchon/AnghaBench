
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {struct xgbe_phy_data* phy_data; } ;
struct xgbe_phy_data {int speed_set; } ;
typedef enum xgbe_mode { ____Placeholder_xgbe_mode } xgbe_mode ;





 int XGBE_MODE_KR ;
 int XGBE_MODE_KX_1000 ;
 int XGBE_MODE_KX_2500 ;
 int XGBE_MODE_UNKNOWN ;
 int XGBE_SPEEDSET_1000_10000 ;
 int XGBE_SPEEDSET_2500_10000 ;

__attribute__((used)) static enum xgbe_mode xgbe_phy_get_mode(struct xgbe_prv_data *pdata,
     int speed)
{
 struct xgbe_phy_data *phy_data = pdata->phy_data;

 switch (speed) {
 case 130:
  return (phy_data->speed_set == XGBE_SPEEDSET_1000_10000)
   ? XGBE_MODE_KX_1000 : XGBE_MODE_UNKNOWN;
 case 128:
  return (phy_data->speed_set == XGBE_SPEEDSET_2500_10000)
   ? XGBE_MODE_KX_2500 : XGBE_MODE_UNKNOWN;
 case 129:
  return XGBE_MODE_KR;
 default:
  return XGBE_MODE_UNKNOWN;
 }
}
