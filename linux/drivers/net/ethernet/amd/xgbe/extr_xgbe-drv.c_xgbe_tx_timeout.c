
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int restart_work; } ;
struct net_device {int dummy; } ;


 struct xgbe_prv_data* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void xgbe_tx_timeout(struct net_device *netdev)
{
 struct xgbe_prv_data *pdata = netdev_priv(netdev);

 netdev_warn(netdev, "tx timeout, device restarting\n");
 schedule_work(&pdata->restart_work);
}
