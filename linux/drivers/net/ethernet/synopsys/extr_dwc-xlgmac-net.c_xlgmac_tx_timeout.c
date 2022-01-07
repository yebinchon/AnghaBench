
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_pdata {int restart_work; } ;
struct net_device {int dummy; } ;


 struct xlgmac_pdata* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void xlgmac_tx_timeout(struct net_device *netdev)
{
 struct xlgmac_pdata *pdata = netdev_priv(netdev);

 netdev_warn(netdev, "tx timeout, device restarting\n");
 schedule_work(&pdata->restart_work);
}
