
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* phy_exit ) (struct xgbe_prv_data*) ;} ;
struct xgbe_prv_data {TYPE_1__ phy_if; struct net_device* netdev; } ;
struct net_device {int dummy; } ;


 int CONFIG_PTP_1588_CLOCK ;
 scalar_t__ IS_REACHABLE (int ) ;
 int stub1 (struct xgbe_prv_data*) ;
 int unregister_netdev (struct net_device*) ;
 int xgbe_debugfs_exit (struct xgbe_prv_data*) ;
 int xgbe_ptp_unregister (struct xgbe_prv_data*) ;

void xgbe_deconfig_netdev(struct xgbe_prv_data *pdata)
{
 struct net_device *netdev = pdata->netdev;

 xgbe_debugfs_exit(pdata);

 if (IS_REACHABLE(CONFIG_PTP_1588_CLOCK))
  xgbe_ptp_unregister(pdata);

 unregister_netdev(netdev);

 pdata->phy_if.phy_exit(pdata);
}
