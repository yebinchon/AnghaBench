
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgmac_priv {int * tx_skbuff; int * rx_skbuff; int * dma_rx; int dma_rx_phy; int device; int * dma_tx; int dma_tx_phy; } ;
struct xgmac_dma_desc {int dummy; } ;


 int DMA_RX_RING_SZ ;
 int DMA_TX_RING_SZ ;
 int dma_free_coherent (int ,int,int *,int ) ;
 int kfree (int *) ;
 int xgmac_free_rx_skbufs (struct xgmac_priv*) ;
 int xgmac_free_tx_skbufs (struct xgmac_priv*) ;

__attribute__((used)) static void xgmac_free_dma_desc_rings(struct xgmac_priv *priv)
{

 xgmac_free_rx_skbufs(priv);
 xgmac_free_tx_skbufs(priv);


 if (priv->dma_tx) {
  dma_free_coherent(priv->device,
      DMA_TX_RING_SZ * sizeof(struct xgmac_dma_desc),
      priv->dma_tx, priv->dma_tx_phy);
  priv->dma_tx = ((void*)0);
 }
 if (priv->dma_rx) {
  dma_free_coherent(priv->device,
      DMA_RX_RING_SZ * sizeof(struct xgmac_dma_desc),
      priv->dma_rx, priv->dma_rx_phy);
  priv->dma_rx = ((void*)0);
 }
 kfree(priv->rx_skbuff);
 priv->rx_skbuff = ((void*)0);
 kfree(priv->tx_skbuff);
 priv->tx_skbuff = ((void*)0);
}
