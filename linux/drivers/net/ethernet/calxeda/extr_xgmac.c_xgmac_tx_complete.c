
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgmac_priv {unsigned int tx_tail; int dev; struct sk_buff** tx_skbuff; int device; int tx_head; struct xgmac_dma_desc* dma_tx; } ;
struct xgmac_dma_desc {int dummy; } ;
struct sk_buff {int dummy; } ;


 int DMA_TO_DEVICE ;
 int DMA_TX_RING_SZ ;
 scalar_t__ MAX_SKB_FRAGS ;
 int desc_get_buf_addr (struct xgmac_dma_desc*) ;
 int desc_get_buf_len (struct xgmac_dma_desc*) ;
 scalar_t__ desc_get_owner (struct xgmac_dma_desc*) ;
 scalar_t__ desc_get_tx_fs (struct xgmac_dma_desc*) ;
 scalar_t__ desc_get_tx_ls (struct xgmac_dma_desc*) ;
 int desc_get_tx_status (struct xgmac_priv*,struct xgmac_dma_desc*) ;
 int dev_consume_skb_any (struct sk_buff*) ;
 scalar_t__ dma_ring_cnt (int ,unsigned int,int ) ;
 unsigned int dma_ring_incr (unsigned int,int ) ;
 int dma_unmap_page (int ,int ,int ,int ) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int netdev_dbg (int ,char*,int ,unsigned int) ;
 scalar_t__ netif_queue_stopped (int ) ;
 int netif_wake_queue (int ) ;
 int smp_mb () ;
 scalar_t__ tx_dma_ring_space (struct xgmac_priv*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void xgmac_tx_complete(struct xgmac_priv *priv)
{
 while (dma_ring_cnt(priv->tx_head, priv->tx_tail, DMA_TX_RING_SZ)) {
  unsigned int entry = priv->tx_tail;
  struct sk_buff *skb = priv->tx_skbuff[entry];
  struct xgmac_dma_desc *p = priv->dma_tx + entry;


  if (desc_get_owner(p))
   break;

  netdev_dbg(priv->dev, "tx ring: curr %d, dirty %d\n",
   priv->tx_head, priv->tx_tail);

  if (desc_get_tx_fs(p))
   dma_unmap_single(priv->device, desc_get_buf_addr(p),
      desc_get_buf_len(p), DMA_TO_DEVICE);
  else
   dma_unmap_page(priv->device, desc_get_buf_addr(p),
           desc_get_buf_len(p), DMA_TO_DEVICE);


  if (desc_get_tx_ls(p)) {
   desc_get_tx_status(priv, p);
   dev_consume_skb_any(skb);
  }

  priv->tx_skbuff[entry] = ((void*)0);
  priv->tx_tail = dma_ring_incr(entry, DMA_TX_RING_SZ);
 }


 smp_mb();
 if (unlikely(netif_queue_stopped(priv->dev) &&
     (tx_dma_ring_space(priv) > MAX_SKB_FRAGS)))
  netif_wake_queue(priv->dev);
}
