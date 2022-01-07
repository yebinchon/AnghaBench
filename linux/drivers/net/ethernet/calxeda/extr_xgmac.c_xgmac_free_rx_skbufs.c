
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgmac_priv {struct sk_buff** rx_skbuff; scalar_t__ dma_buf_sz; int device; struct xgmac_dma_desc* dma_rx; } ;
struct xgmac_dma_desc {int dummy; } ;
struct sk_buff {int dummy; } ;


 int DMA_FROM_DEVICE ;
 int DMA_RX_RING_SZ ;
 scalar_t__ NET_IP_ALIGN ;
 int desc_get_buf_addr (struct xgmac_dma_desc*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_unmap_single (int ,int ,scalar_t__,int ) ;

__attribute__((used)) static void xgmac_free_rx_skbufs(struct xgmac_priv *priv)
{
 int i;
 struct xgmac_dma_desc *p;

 if (!priv->rx_skbuff)
  return;

 for (i = 0; i < DMA_RX_RING_SZ; i++) {
  struct sk_buff *skb = priv->rx_skbuff[i];
  if (skb == ((void*)0))
   continue;

  p = priv->dma_rx + i;
  dma_unmap_single(priv->device, desc_get_buf_addr(p),
     priv->dma_buf_sz - NET_IP_ALIGN, DMA_FROM_DEVICE);
  dev_kfree_skb_any(skb);
  priv->rx_skbuff[i] = ((void*)0);
 }
}
