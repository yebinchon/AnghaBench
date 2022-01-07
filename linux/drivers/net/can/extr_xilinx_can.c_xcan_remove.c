
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xcan_priv {int napi; } ;
struct platform_device {int dev; } ;
struct net_device {int dummy; } ;


 int free_candev (struct net_device*) ;
 struct xcan_priv* netdev_priv (struct net_device*) ;
 int netif_napi_del (int *) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int unregister_candev (struct net_device*) ;

__attribute__((used)) static int xcan_remove(struct platform_device *pdev)
{
 struct net_device *ndev = platform_get_drvdata(pdev);
 struct xcan_priv *priv = netdev_priv(ndev);

 unregister_candev(ndev);
 pm_runtime_disable(&pdev->dev);
 netif_napi_del(&priv->napi);
 free_candev(ndev);

 return 0;
}
