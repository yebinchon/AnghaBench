
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* i2c_start ) (struct xgbe_prv_data*) ;int (* i2c_stop ) (struct xgbe_prv_data*) ;} ;
struct TYPE_3__ {int (* set_ext_mii_mode ) (struct xgbe_prv_data*,int ,int ) ;} ;
struct xgbe_prv_data {TYPE_2__ i2c_if; int netdev; TYPE_1__ hw_if; struct xgbe_phy_data* phy_data; } ;
struct xgbe_phy_data {int port_mode; int start_mode; int redrv_addr; int redrv_if; scalar_t__ redrv; } ;


 int XGBE_MDIO_MODE_CL22 ;

 int netdev_err (int ,char*,int ) ;
 int stub1 (struct xgbe_prv_data*) ;
 int stub2 (struct xgbe_prv_data*,int ,int ) ;
 int stub3 (struct xgbe_prv_data*) ;
 int xgbe_phy_cdr_track (struct xgbe_prv_data*) ;
 int xgbe_phy_find_phy_device (struct xgbe_prv_data*) ;
 int xgbe_phy_set_mode (struct xgbe_prv_data*,int ) ;
 int xgbe_phy_sfp_detect (struct xgbe_prv_data*) ;

__attribute__((used)) static int xgbe_phy_start(struct xgbe_prv_data *pdata)
{
 struct xgbe_phy_data *phy_data = pdata->phy_data;
 int ret;


 ret = pdata->i2c_if.i2c_start(pdata);
 if (ret)
  return ret;


 if (phy_data->redrv && !phy_data->redrv_if) {
  ret = pdata->hw_if.set_ext_mii_mode(pdata, phy_data->redrv_addr,
          XGBE_MDIO_MODE_CL22);
  if (ret) {
   netdev_err(pdata->netdev,
       "redriver mdio port not compatible (%u)\n",
       phy_data->redrv_addr);
   return ret;
  }
 }


 xgbe_phy_set_mode(pdata, phy_data->start_mode);


 xgbe_phy_cdr_track(pdata);


 switch (phy_data->port_mode) {
 case 128:
  xgbe_phy_sfp_detect(pdata);
  break;
 default:
  break;
 }


 ret = xgbe_phy_find_phy_device(pdata);
 if (ret)
  goto err_i2c;

 return 0;

err_i2c:
 pdata->i2c_if.i2c_stop(pdata);

 return ret;
}
