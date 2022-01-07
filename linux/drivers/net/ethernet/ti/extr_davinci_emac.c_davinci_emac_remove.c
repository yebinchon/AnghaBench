
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct net_device {int dev; } ;
struct emac_priv {int phy_node; int dma; scalar_t__ rxchan; scalar_t__ txchan; } ;
struct device_node {int dummy; } ;


 int cpdma_chan_destroy (scalar_t__) ;
 int cpdma_ctlr_destroy (int ) ;
 int dev_notice (int *,char*) ;
 int free_netdev (struct net_device*) ;
 struct emac_priv* netdev_priv (struct net_device*) ;
 int of_node_put (int ) ;
 int of_phy_deregister_fixed_link (struct device_node*) ;
 scalar_t__ of_phy_is_fixed_link (struct device_node*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (TYPE_1__*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int davinci_emac_remove(struct platform_device *pdev)
{
 struct net_device *ndev = platform_get_drvdata(pdev);
 struct emac_priv *priv = netdev_priv(ndev);
 struct device_node *np = pdev->dev.of_node;

 dev_notice(&ndev->dev, "DaVinci EMAC: davinci_emac_remove()\n");

 if (priv->txchan)
  cpdma_chan_destroy(priv->txchan);
 if (priv->rxchan)
  cpdma_chan_destroy(priv->rxchan);
 cpdma_ctlr_destroy(priv->dma);

 unregister_netdev(ndev);
 of_node_put(priv->phy_node);
 pm_runtime_disable(&pdev->dev);
 if (of_phy_is_fixed_link(np))
  of_phy_deregister_fixed_link(np);
 free_netdev(ndev);

 return 0;
}
