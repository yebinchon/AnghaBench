
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {struct xgbe_phy_data* phy_data; } ;
struct xgbe_phy_data {int port_mode; } ;
 int xgbe_phy_valid_speed_baset_mode (struct xgbe_phy_data*,int) ;
 int xgbe_phy_valid_speed_basex_mode (struct xgbe_phy_data*,int) ;
 int xgbe_phy_valid_speed_bp_2500_mode (int) ;
 int xgbe_phy_valid_speed_bp_mode (int) ;
 int xgbe_phy_valid_speed_sfp_mode (struct xgbe_phy_data*,int) ;

__attribute__((used)) static bool xgbe_phy_valid_speed(struct xgbe_prv_data *pdata, int speed)
{
 struct xgbe_phy_data *phy_data = pdata->phy_data;

 switch (phy_data->port_mode) {
 case 131:
  return xgbe_phy_valid_speed_bp_mode(speed);
 case 130:
  return xgbe_phy_valid_speed_bp_2500_mode(speed);
 case 135:
 case 129:
 case 132:
  return xgbe_phy_valid_speed_baset_mode(phy_data, speed);
 case 134:
 case 133:
  return xgbe_phy_valid_speed_basex_mode(phy_data, speed);
 case 128:
  return xgbe_phy_valid_speed_sfp_mode(phy_data, speed);
 default:
  return 0;
 }
}
