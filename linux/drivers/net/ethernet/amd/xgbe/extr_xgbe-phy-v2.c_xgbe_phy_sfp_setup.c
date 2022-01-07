
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 int xgbe_phy_sfp_comm_setup (struct xgbe_prv_data*) ;
 int xgbe_phy_sfp_gpio_setup (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_phy_sfp_setup(struct xgbe_prv_data *pdata)
{
 xgbe_phy_sfp_comm_setup(pdata);
 xgbe_phy_sfp_gpio_setup(pdata);
}
