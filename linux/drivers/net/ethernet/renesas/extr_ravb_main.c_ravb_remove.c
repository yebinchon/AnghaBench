
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ravb_private {scalar_t__ chip_id; int * napi; int desc_bat_dma; int desc_bat; int desc_bat_size; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;


 int CCC ;
 int CCC_OPC_RESET ;
 size_t RAVB_BE ;
 size_t RAVB_NC ;
 scalar_t__ RCAR_GEN2 ;
 int dma_free_coherent (int ,int ,int ,int ) ;
 int free_netdev (struct net_device*) ;
 struct ravb_private* netdev_priv (struct net_device*) ;
 int netif_napi_del (int *) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_put_sync (int *) ;
 int ravb_mdio_release (struct ravb_private*) ;
 int ravb_ptp_stop (struct net_device*) ;
 int ravb_write (struct net_device*,int ,int ) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int ravb_remove(struct platform_device *pdev)
{
 struct net_device *ndev = platform_get_drvdata(pdev);
 struct ravb_private *priv = netdev_priv(ndev);


 if (priv->chip_id != RCAR_GEN2)
  ravb_ptp_stop(ndev);

 dma_free_coherent(ndev->dev.parent, priv->desc_bat_size, priv->desc_bat,
     priv->desc_bat_dma);

 ravb_write(ndev, CCC_OPC_RESET, CCC);
 pm_runtime_put_sync(&pdev->dev);
 unregister_netdev(ndev);
 netif_napi_del(&priv->napi[RAVB_NC]);
 netif_napi_del(&priv->napi[RAVB_BE]);
 ravb_mdio_release(priv);
 pm_runtime_disable(&pdev->dev);
 free_netdev(ndev);
 platform_set_drvdata(pdev, ((void*)0));

 return 0;
}
