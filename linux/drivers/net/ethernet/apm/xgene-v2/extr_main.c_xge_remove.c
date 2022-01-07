
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xge_pdata {struct net_device* ndev; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;


 int dev_close (struct net_device*) ;
 int free_netdev (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 struct xge_pdata* platform_get_drvdata (struct platform_device*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int unregister_netdev (struct net_device*) ;
 int xge_mdio_remove (struct net_device*) ;

__attribute__((used)) static int xge_remove(struct platform_device *pdev)
{
 struct xge_pdata *pdata;
 struct net_device *ndev;

 pdata = platform_get_drvdata(pdev);
 ndev = pdata->ndev;

 rtnl_lock();
 if (netif_running(ndev))
  dev_close(ndev);
 rtnl_unlock();

 xge_mdio_remove(ndev);
 unregister_netdev(ndev);
 free_netdev(ndev);

 return 0;
}
