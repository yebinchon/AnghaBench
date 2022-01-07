
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgmac_priv {scalar_t__ base; int napi; } ;
struct net_device {int dummy; } ;


 scalar_t__ XGMAC_DMA_INTR_ENA ;
 int napi_disable (int *) ;
 struct xgmac_priv* netdev_priv (struct net_device*) ;
 int netif_tx_disable (struct net_device*) ;
 scalar_t__ readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;
 int xgmac_free_dma_desc_rings (struct xgmac_priv*) ;
 int xgmac_mac_disable (scalar_t__) ;

__attribute__((used)) static int xgmac_stop(struct net_device *dev)
{
 struct xgmac_priv *priv = netdev_priv(dev);

 if (readl(priv->base + XGMAC_DMA_INTR_ENA))
  napi_disable(&priv->napi);

 writel(0, priv->base + XGMAC_DMA_INTR_ENA);

 netif_tx_disable(dev);


 xgmac_mac_disable(priv->base);


 xgmac_free_dma_desc_rings(priv);

 return 0;
}
