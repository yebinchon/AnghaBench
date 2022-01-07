
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* module_info ) (struct xgbe_prv_data*,struct ethtool_modinfo*) ;} ;
struct xgbe_prv_data {TYPE_1__ phy_if; } ;
struct net_device {int dummy; } ;
struct ethtool_modinfo {int dummy; } ;


 struct xgbe_prv_data* netdev_priv (struct net_device*) ;
 int stub1 (struct xgbe_prv_data*,struct ethtool_modinfo*) ;

__attribute__((used)) static int xgbe_get_module_info(struct net_device *netdev,
    struct ethtool_modinfo *modinfo)
{
 struct xgbe_prv_data *pdata = netdev_priv(netdev);

 return pdata->phy_if.module_info(pdata, modinfo);
}
