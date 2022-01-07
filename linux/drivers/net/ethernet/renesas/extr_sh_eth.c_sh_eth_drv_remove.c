
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_eth_private {int napi; } ;
struct platform_device {int dev; } ;
struct net_device {int dummy; } ;


 int free_netdev (struct net_device*) ;
 struct sh_eth_private* netdev_priv (struct net_device*) ;
 int netif_napi_del (int *) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int sh_mdio_release (struct sh_eth_private*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int sh_eth_drv_remove(struct platform_device *pdev)
{
 struct net_device *ndev = platform_get_drvdata(pdev);
 struct sh_eth_private *mdp = netdev_priv(ndev);

 unregister_netdev(ndev);
 netif_napi_del(&mdp->napi);
 sh_mdio_release(mdp);
 pm_runtime_disable(&pdev->dev);
 free_netdev(ndev);

 return 0;
}
