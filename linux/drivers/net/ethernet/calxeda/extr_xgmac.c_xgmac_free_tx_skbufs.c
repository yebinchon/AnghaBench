
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgmac_priv {int ** tx_skbuff; int device; struct xgmac_dma_desc* dma_tx; } ;
struct xgmac_dma_desc {int dummy; } ;


 int DMA_TO_DEVICE ;
 int DMA_TX_RING_SZ ;
 int desc_get_buf_addr (struct xgmac_dma_desc*) ;
 int desc_get_buf_len (struct xgmac_dma_desc*) ;
 scalar_t__ desc_get_tx_fs (struct xgmac_dma_desc*) ;
 scalar_t__ desc_get_tx_ls (struct xgmac_dma_desc*) ;
 int dev_kfree_skb_any (int *) ;
 int dma_unmap_page (int ,int ,int ,int ) ;
 int dma_unmap_single (int ,int ,int ,int ) ;

__attribute__((used)) static void xgmac_free_tx_skbufs(struct xgmac_priv *priv)
{
 int i;
 struct xgmac_dma_desc *p;

 if (!priv->tx_skbuff)
  return;

 for (i = 0; i < DMA_TX_RING_SZ; i++) {
  if (priv->tx_skbuff[i] == ((void*)0))
   continue;

  p = priv->dma_tx + i;
  if (desc_get_tx_fs(p))
   dma_unmap_single(priv->device, desc_get_buf_addr(p),
      desc_get_buf_len(p), DMA_TO_DEVICE);
  else
   dma_unmap_page(priv->device, desc_get_buf_addr(p),
           desc_get_buf_len(p), DMA_TO_DEVICE);

  if (desc_get_tx_ls(p))
   dev_kfree_skb_any(priv->tx_skbuff[i]);
  priv->tx_skbuff[i] = ((void*)0);
 }
}
