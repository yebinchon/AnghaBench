
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgmac_priv {int base; int napi; int pmt_irq; } ;
struct resource {int start; } ;
struct platform_device {int dummy; } ;
struct net_device {int irq; } ;


 int IORESOURCE_MEM ;
 int free_irq (int ,struct net_device*) ;
 int free_netdev (struct net_device*) ;
 int iounmap (int ) ;
 struct xgmac_priv* netdev_priv (struct net_device*) ;
 int netif_napi_del (int *) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int release_mem_region (int ,int ) ;
 int resource_size (struct resource*) ;
 int unregister_netdev (struct net_device*) ;
 int xgmac_mac_disable (int ) ;

__attribute__((used)) static int xgmac_remove(struct platform_device *pdev)
{
 struct net_device *ndev = platform_get_drvdata(pdev);
 struct xgmac_priv *priv = netdev_priv(ndev);
 struct resource *res;

 xgmac_mac_disable(priv->base);


 free_irq(ndev->irq, ndev);
 free_irq(priv->pmt_irq, ndev);

 unregister_netdev(ndev);
 netif_napi_del(&priv->napi);

 iounmap(priv->base);
 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 release_mem_region(res->start, resource_size(res));

 free_netdev(ndev);

 return 0;
}
