
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct nps_enet_priv {int napi; } ;
struct net_device {int dummy; } ;
typedef int s32 ;


 int free_netdev (struct net_device*) ;
 struct nps_enet_priv* netdev_priv (struct net_device*) ;
 int netif_napi_del (int *) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static s32 nps_enet_remove(struct platform_device *pdev)
{
 struct net_device *ndev = platform_get_drvdata(pdev);
 struct nps_enet_priv *priv = netdev_priv(ndev);

 unregister_netdev(ndev);
 free_netdev(ndev);
 netif_napi_del(&priv->napi);

 return 0;
}
