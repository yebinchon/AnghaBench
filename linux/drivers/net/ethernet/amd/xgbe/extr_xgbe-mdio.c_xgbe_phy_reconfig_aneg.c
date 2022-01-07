
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 int __xgbe_phy_config_aneg (struct xgbe_prv_data*,int) ;

__attribute__((used)) static int xgbe_phy_reconfig_aneg(struct xgbe_prv_data *pdata)
{
 return __xgbe_phy_config_aneg(pdata, 0);
}
