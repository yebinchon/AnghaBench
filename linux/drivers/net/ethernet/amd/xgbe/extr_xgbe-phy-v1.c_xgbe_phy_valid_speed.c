
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {struct xgbe_phy_data* phy_data; } ;
struct xgbe_phy_data {int speed_set; } ;





 int XGBE_SPEEDSET_1000_10000 ;
 int XGBE_SPEEDSET_2500_10000 ;

__attribute__((used)) static bool xgbe_phy_valid_speed(struct xgbe_prv_data *pdata, int speed)
{
 struct xgbe_phy_data *phy_data = pdata->phy_data;

 switch (speed) {
 case 130:
  if (phy_data->speed_set != XGBE_SPEEDSET_1000_10000)
   return 0;
  return 1;
 case 128:
  if (phy_data->speed_set != XGBE_SPEEDSET_2500_10000)
   return 0;
  return 1;
 case 129:
  return 1;
 default:
  return 0;
 }
}
