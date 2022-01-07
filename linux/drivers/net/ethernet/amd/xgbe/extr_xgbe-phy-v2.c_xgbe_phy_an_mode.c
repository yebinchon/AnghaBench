
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {struct xgbe_phy_data* phy_data; } ;
struct xgbe_phy_data {int port_mode; scalar_t__ redrv; } ;
typedef enum xgbe_an_mode { ____Placeholder_xgbe_an_mode } xgbe_an_mode ;


 int XGBE_AN_MODE_CL37 ;
 int XGBE_AN_MODE_CL37_SGMII ;
 int XGBE_AN_MODE_CL73 ;
 int XGBE_AN_MODE_CL73_REDRV ;
 int XGBE_AN_MODE_NONE ;
 int xgbe_phy_an_sfp_mode (struct xgbe_phy_data*) ;

__attribute__((used)) static enum xgbe_an_mode xgbe_phy_an_mode(struct xgbe_prv_data *pdata)
{
 struct xgbe_phy_data *phy_data = pdata->phy_data;


 if (phy_data->redrv)
  return XGBE_AN_MODE_CL73_REDRV;

 switch (phy_data->port_mode) {
 case 131:
  return XGBE_AN_MODE_CL73;
 case 130:
  return XGBE_AN_MODE_NONE;
 case 135:
  return XGBE_AN_MODE_CL37_SGMII;
 case 134:
  return XGBE_AN_MODE_CL37;
 case 129:
  return XGBE_AN_MODE_CL37_SGMII;
 case 132:
  return XGBE_AN_MODE_CL73;
 case 133:
  return XGBE_AN_MODE_NONE;
 case 128:
  return xgbe_phy_an_sfp_mode(phy_data);
 default:
  return XGBE_AN_MODE_NONE;
 }
}
