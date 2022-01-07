
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;
struct ftgmac100 {int napi; int res; int base; int reset_task; int clk; } ;


 int cancel_work_sync (int *) ;
 int clk_disable_unprepare (int ) ;
 int free_netdev (struct net_device*) ;
 int ftgmac100_destroy_mdio (struct net_device*) ;
 int iounmap (int ) ;
 struct ftgmac100* netdev_priv (struct net_device*) ;
 int netif_napi_del (int *) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int release_resource (int ) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int ftgmac100_remove(struct platform_device *pdev)
{
 struct net_device *netdev;
 struct ftgmac100 *priv;

 netdev = platform_get_drvdata(pdev);
 priv = netdev_priv(netdev);

 unregister_netdev(netdev);

 clk_disable_unprepare(priv->clk);




 cancel_work_sync(&priv->reset_task);

 ftgmac100_destroy_mdio(netdev);

 iounmap(priv->base);
 release_resource(priv->res);

 netif_napi_del(&priv->napi);
 free_netdev(netdev);
 return 0;
}
