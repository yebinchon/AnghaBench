
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;
struct ave_private {int napi_tx; int napi_rx; } ;


 int free_netdev (struct net_device*) ;
 struct ave_private* netdev_priv (struct net_device*) ;
 int netif_napi_del (int *) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int ave_remove(struct platform_device *pdev)
{
 struct net_device *ndev = platform_get_drvdata(pdev);
 struct ave_private *priv = netdev_priv(ndev);

 unregister_netdev(ndev);
 netif_napi_del(&priv->napi_rx);
 netif_napi_del(&priv->napi_tx);
 free_netdev(ndev);

 return 0;
}
