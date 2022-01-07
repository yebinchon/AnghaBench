
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {struct xgbe_phy_data* phy_data; } ;
struct xgbe_phy_data {int port_mode; int conn_type; } ;


 int XGBE_CONN_TYPE_BACKPLANE ;
 int XGBE_CONN_TYPE_MDIO ;
 int XGBE_CONN_TYPE_SFP ;
__attribute__((used)) static bool xgbe_phy_conn_type_mismatch(struct xgbe_prv_data *pdata)
{
 struct xgbe_phy_data *phy_data = pdata->phy_data;

 switch (phy_data->port_mode) {
 case 131:
 case 130:
  if (phy_data->conn_type == XGBE_CONN_TYPE_BACKPLANE)
   return 0;
  break;
 case 135:
 case 134:
 case 129:
 case 132:
 case 133:
  if (phy_data->conn_type == XGBE_CONN_TYPE_MDIO)
   return 0;
  break;
 case 128:
  if (phy_data->conn_type == XGBE_CONN_TYPE_SFP)
   return 0;
  break;
 default:
  break;
 }

 return 1;
}
