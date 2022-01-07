
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {struct xgbe_phy_data* phy_data; } ;
struct xgbe_phy_data {int port_mode; int port_speeds; } ;


 int XGBE_PHY_PORT_SPEED_100 ;
 int XGBE_PHY_PORT_SPEED_1000 ;
 int XGBE_PHY_PORT_SPEED_10000 ;
 int XGBE_PHY_PORT_SPEED_2500 ;
__attribute__((used)) static bool xgbe_phy_port_mode_mismatch(struct xgbe_prv_data *pdata)
{
 struct xgbe_phy_data *phy_data = pdata->phy_data;

 switch (phy_data->port_mode) {
 case 131:
  if ((phy_data->port_speeds & XGBE_PHY_PORT_SPEED_1000) ||
      (phy_data->port_speeds & XGBE_PHY_PORT_SPEED_10000))
   return 0;
  break;
 case 130:
  if (phy_data->port_speeds & XGBE_PHY_PORT_SPEED_2500)
   return 0;
  break;
 case 135:
  if ((phy_data->port_speeds & XGBE_PHY_PORT_SPEED_100) ||
      (phy_data->port_speeds & XGBE_PHY_PORT_SPEED_1000))
   return 0;
  break;
 case 134:
  if (phy_data->port_speeds & XGBE_PHY_PORT_SPEED_1000)
   return 0;
  break;
 case 129:
  if ((phy_data->port_speeds & XGBE_PHY_PORT_SPEED_100) ||
      (phy_data->port_speeds & XGBE_PHY_PORT_SPEED_1000) ||
      (phy_data->port_speeds & XGBE_PHY_PORT_SPEED_2500))
   return 0;
  break;
 case 132:
  if ((phy_data->port_speeds & XGBE_PHY_PORT_SPEED_100) ||
      (phy_data->port_speeds & XGBE_PHY_PORT_SPEED_1000) ||
      (phy_data->port_speeds & XGBE_PHY_PORT_SPEED_10000))
   return 0;
  break;
 case 133:
  if (phy_data->port_speeds & XGBE_PHY_PORT_SPEED_10000)
   return 0;
  break;
 case 128:
  if ((phy_data->port_speeds & XGBE_PHY_PORT_SPEED_100) ||
      (phy_data->port_speeds & XGBE_PHY_PORT_SPEED_1000) ||
      (phy_data->port_speeds & XGBE_PHY_PORT_SPEED_10000))
   return 0;
  break;
 default:
  break;
 }

 return 1;
}
