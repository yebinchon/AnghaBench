
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct netsec_priv {int ndev; int napi; } ;


 int free_netdev (int ) ;
 int netif_napi_del (int *) ;
 int netsec_unregister_mdio (struct netsec_priv*) ;
 struct netsec_priv* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int unregister_netdev (int ) ;

__attribute__((used)) static int netsec_remove(struct platform_device *pdev)
{
 struct netsec_priv *priv = platform_get_drvdata(pdev);

 unregister_netdev(priv->ndev);

 netsec_unregister_mdio(priv);

 netif_napi_del(&priv->napi);

 pm_runtime_disable(&pdev->dev);
 free_netdev(priv->ndev);

 return 0;
}
