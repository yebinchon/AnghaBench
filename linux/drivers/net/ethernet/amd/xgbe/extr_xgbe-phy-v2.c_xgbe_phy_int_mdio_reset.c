
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int (* set_gpio ) (struct xgbe_prv_data*,int ) ;unsigned int (* clr_gpio ) (struct xgbe_prv_data*,int ) ;} ;
struct xgbe_prv_data {TYPE_1__ hw_if; struct xgbe_phy_data* phy_data; } ;
struct xgbe_phy_data {int mdio_reset_gpio; } ;


 unsigned int stub1 (struct xgbe_prv_data*,int ) ;
 unsigned int stub2 (struct xgbe_prv_data*,int ) ;

__attribute__((used)) static int xgbe_phy_int_mdio_reset(struct xgbe_prv_data *pdata)
{
 struct xgbe_phy_data *phy_data = pdata->phy_data;
 unsigned int ret;

 ret = pdata->hw_if.set_gpio(pdata, phy_data->mdio_reset_gpio);
 if (ret)
  return ret;

 ret = pdata->hw_if.clr_gpio(pdata, phy_data->mdio_reset_gpio);

 return ret;
}
