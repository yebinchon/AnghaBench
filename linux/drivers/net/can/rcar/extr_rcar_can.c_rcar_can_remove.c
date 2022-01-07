
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_can_priv {int napi; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;


 int free_candev (struct net_device*) ;
 struct rcar_can_priv* netdev_priv (struct net_device*) ;
 int netif_napi_del (int *) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int unregister_candev (struct net_device*) ;

__attribute__((used)) static int rcar_can_remove(struct platform_device *pdev)
{
 struct net_device *ndev = platform_get_drvdata(pdev);
 struct rcar_can_priv *priv = netdev_priv(ndev);

 unregister_candev(ndev);
 netif_napi_del(&priv->napi);
 free_candev(ndev);
 return 0;
}
