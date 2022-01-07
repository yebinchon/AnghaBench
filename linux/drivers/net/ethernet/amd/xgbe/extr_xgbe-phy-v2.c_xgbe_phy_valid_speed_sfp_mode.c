
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_phy_data {int sfp_speed; } ;





 int XGBE_SFP_SPEED_1000 ;
 int XGBE_SFP_SPEED_10000 ;
 int XGBE_SFP_SPEED_100_1000 ;

__attribute__((used)) static bool xgbe_phy_valid_speed_sfp_mode(struct xgbe_phy_data *phy_data,
       int speed)
{
 switch (speed) {
 case 130:
  return (phy_data->sfp_speed == XGBE_SFP_SPEED_100_1000);
 case 129:
  return ((phy_data->sfp_speed == XGBE_SFP_SPEED_100_1000) ||
   (phy_data->sfp_speed == XGBE_SFP_SPEED_1000));
 case 128:
  return (phy_data->sfp_speed == XGBE_SFP_SPEED_10000);
 default:
  return 0;
 }
}
