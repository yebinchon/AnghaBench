
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_phy_data {int port_mode; } ;






 int XGBE_PORT_MODE_10GBASE_T ;
 int XGBE_PORT_MODE_NBASE_T ;

__attribute__((used)) static bool xgbe_phy_valid_speed_baset_mode(struct xgbe_phy_data *phy_data,
         int speed)
{
 switch (speed) {
 case 131:
 case 130:
  return 1;
 case 128:
  return (phy_data->port_mode == XGBE_PORT_MODE_NBASE_T);
 case 129:
  return (phy_data->port_mode == XGBE_PORT_MODE_10GBASE_T);
 default:
  return 0;
 }
}
