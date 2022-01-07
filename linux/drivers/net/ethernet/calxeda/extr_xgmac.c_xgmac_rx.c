
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgmac_priv {unsigned int rx_tail; int napi; int dev; scalar_t__ dma_buf_sz; int device; struct sk_buff** rx_skbuff; struct xgmac_dma_desc* dma_rx; int rx_head; } ;
struct xgmac_dma_desc {int dummy; } ;
struct sk_buff {int ip_summed; int protocol; } ;


 int CHECKSUM_NONE ;
 int DMA_FROM_DEVICE ;
 int DMA_RX_RING_SZ ;
 scalar_t__ NET_IP_ALIGN ;
 int desc_get_buf_addr (struct xgmac_dma_desc*) ;
 scalar_t__ desc_get_owner (struct xgmac_dma_desc*) ;
 int desc_get_rx_frame_len (struct xgmac_dma_desc*) ;
 int desc_get_rx_status (struct xgmac_priv*,struct xgmac_dma_desc*) ;
 int dma_ring_cnt (int ,unsigned int,int ) ;
 unsigned int dma_ring_incr (unsigned int,int ) ;
 int dma_unmap_single (int ,int ,scalar_t__,int ) ;
 int eth_type_trans (struct sk_buff*,int ) ;
 int napi_gro_receive (int *,struct sk_buff*) ;
 int netdev_dbg (int ,char*,int,int) ;
 int netdev_err (int ,char*) ;
 int netif_receive_skb (struct sk_buff*) ;
 int skb_put (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;
 int xgmac_rx_refill (struct xgmac_priv*) ;

__attribute__((used)) static int xgmac_rx(struct xgmac_priv *priv, int limit)
{
 unsigned int entry;
 unsigned int count = 0;
 struct xgmac_dma_desc *p;

 while (count < limit) {
  int ip_checksum;
  struct sk_buff *skb;
  int frame_len;

  if (!dma_ring_cnt(priv->rx_head, priv->rx_tail, DMA_RX_RING_SZ))
   break;

  entry = priv->rx_tail;
  p = priv->dma_rx + entry;
  if (desc_get_owner(p))
   break;

  count++;
  priv->rx_tail = dma_ring_incr(priv->rx_tail, DMA_RX_RING_SZ);


  ip_checksum = desc_get_rx_status(priv, p);
  if (ip_checksum < 0)
   continue;

  skb = priv->rx_skbuff[entry];
  if (unlikely(!skb)) {
   netdev_err(priv->dev, "Inconsistent Rx descriptor chain\n");
   break;
  }
  priv->rx_skbuff[entry] = ((void*)0);

  frame_len = desc_get_rx_frame_len(p);
  netdev_dbg(priv->dev, "RX frame size %d, COE status: %d\n",
   frame_len, ip_checksum);

  skb_put(skb, frame_len);
  dma_unmap_single(priv->device, desc_get_buf_addr(p),
     priv->dma_buf_sz - NET_IP_ALIGN, DMA_FROM_DEVICE);

  skb->protocol = eth_type_trans(skb, priv->dev);
  skb->ip_summed = ip_checksum;
  if (ip_checksum == CHECKSUM_NONE)
   netif_receive_skb(skb);
  else
   napi_gro_receive(&priv->napi, skb);
 }

 xgmac_rx_refill(priv);

 return count;
}
