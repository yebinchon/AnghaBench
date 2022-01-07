
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;
struct ftmac100 {int napi; int res; int base; } ;


 int free_netdev (struct net_device*) ;
 int iounmap (int ) ;
 struct ftmac100* netdev_priv (struct net_device*) ;
 int netif_napi_del (int *) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int release_resource (int ) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int ftmac100_remove(struct platform_device *pdev)
{
 struct net_device *netdev;
 struct ftmac100 *priv;

 netdev = platform_get_drvdata(pdev);
 priv = netdev_priv(netdev);

 unregister_netdev(netdev);

 iounmap(priv->base);
 release_resource(priv->res);

 netif_napi_del(&priv->napi);
 free_netdev(netdev);
 return 0;
}
