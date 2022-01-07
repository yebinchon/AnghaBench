
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* module_info ) (struct xgbe_prv_data*,struct ethtool_modinfo*) ;} ;
struct TYPE_4__ {TYPE_1__ phy_impl; } ;
struct xgbe_prv_data {TYPE_2__ phy_if; } ;
struct ethtool_modinfo {int dummy; } ;


 int ENXIO ;
 int stub1 (struct xgbe_prv_data*,struct ethtool_modinfo*) ;

__attribute__((used)) static int xgbe_phy_module_info(struct xgbe_prv_data *pdata,
    struct ethtool_modinfo *modinfo)
{
 if (!pdata->phy_if.phy_impl.module_info)
  return -ENXIO;

 return pdata->phy_if.phy_impl.module_info(pdata, modinfo);
}
