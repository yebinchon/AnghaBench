
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;
typedef enum xgbe_mode { ____Placeholder_xgbe_mode } xgbe_mode ;
 int xgbe_phy_kr_mode (struct xgbe_prv_data*) ;
 int xgbe_phy_kx_1000_mode (struct xgbe_prv_data*) ;
 int xgbe_phy_kx_2500_mode (struct xgbe_prv_data*) ;
 int xgbe_phy_sfi_mode (struct xgbe_prv_data*) ;
 int xgbe_phy_sgmii_1000_mode (struct xgbe_prv_data*) ;
 int xgbe_phy_sgmii_100_mode (struct xgbe_prv_data*) ;
 int xgbe_phy_x_mode (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_phy_set_mode(struct xgbe_prv_data *pdata, enum xgbe_mode mode)
{
 switch (mode) {
 case 133:
  xgbe_phy_kx_1000_mode(pdata);
  break;
 case 132:
  xgbe_phy_kx_2500_mode(pdata);
  break;
 case 134:
  xgbe_phy_kr_mode(pdata);
  break;
 case 130:
  xgbe_phy_sgmii_100_mode(pdata);
  break;
 case 129:
  xgbe_phy_sgmii_1000_mode(pdata);
  break;
 case 128:
  xgbe_phy_x_mode(pdata);
  break;
 case 131:
  xgbe_phy_sfi_mode(pdata);
  break;
 default:
  break;
 }
}
