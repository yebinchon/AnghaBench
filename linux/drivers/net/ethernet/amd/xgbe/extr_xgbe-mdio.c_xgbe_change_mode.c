
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int netdev; } ;
typedef enum xgbe_mode { ____Placeholder_xgbe_mode } xgbe_mode ;
 int link ;
 int netif_dbg (struct xgbe_prv_data*,int ,int ,char*,int) ;
 int xgbe_kr_mode (struct xgbe_prv_data*) ;
 int xgbe_kx_1000_mode (struct xgbe_prv_data*) ;
 int xgbe_kx_2500_mode (struct xgbe_prv_data*) ;
 int xgbe_sfi_mode (struct xgbe_prv_data*) ;
 int xgbe_sgmii_1000_mode (struct xgbe_prv_data*) ;
 int xgbe_sgmii_100_mode (struct xgbe_prv_data*) ;
 int xgbe_x_mode (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_change_mode(struct xgbe_prv_data *pdata,
        enum xgbe_mode mode)
{
 switch (mode) {
 case 134:
  xgbe_kx_1000_mode(pdata);
  break;
 case 133:
  xgbe_kx_2500_mode(pdata);
  break;
 case 135:
  xgbe_kr_mode(pdata);
  break;
 case 131:
  xgbe_sgmii_100_mode(pdata);
  break;
 case 130:
  xgbe_sgmii_1000_mode(pdata);
  break;
 case 128:
  xgbe_x_mode(pdata);
  break;
 case 132:
  xgbe_sfi_mode(pdata);
  break;
 case 129:
  break;
 default:
  netif_dbg(pdata, link, pdata->netdev,
     "invalid operation mode requested (%u)\n", mode);
 }
}
