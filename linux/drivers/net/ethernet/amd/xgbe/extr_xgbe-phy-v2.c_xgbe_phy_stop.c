
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* i2c_stop ) (struct xgbe_prv_data*) ;} ;
struct xgbe_prv_data {TYPE_1__ i2c_if; struct xgbe_phy_data* phy_data; } ;
struct xgbe_phy_data {int dummy; } ;


 int stub1 (struct xgbe_prv_data*) ;
 int xgbe_phy_cdr_track (struct xgbe_prv_data*) ;
 int xgbe_phy_free_phy_device (struct xgbe_prv_data*) ;
 int xgbe_phy_power_off (struct xgbe_prv_data*) ;
 int xgbe_phy_sfp_mod_absent (struct xgbe_prv_data*) ;
 int xgbe_phy_sfp_reset (struct xgbe_phy_data*) ;

__attribute__((used)) static void xgbe_phy_stop(struct xgbe_prv_data *pdata)
{
 struct xgbe_phy_data *phy_data = pdata->phy_data;


 xgbe_phy_free_phy_device(pdata);


 xgbe_phy_sfp_reset(phy_data);
 xgbe_phy_sfp_mod_absent(pdata);


 xgbe_phy_cdr_track(pdata);


 xgbe_phy_power_off(pdata);


 pdata->i2c_if.i2c_stop(pdata);
}
