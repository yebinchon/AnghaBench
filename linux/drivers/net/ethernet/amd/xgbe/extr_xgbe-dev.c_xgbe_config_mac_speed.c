
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int phy_speed; } ;


 int xgbe_set_speed (struct xgbe_prv_data*,int ) ;

__attribute__((used)) static void xgbe_config_mac_speed(struct xgbe_prv_data *pdata)
{
 xgbe_set_speed(pdata, pdata->phy_speed);
}
