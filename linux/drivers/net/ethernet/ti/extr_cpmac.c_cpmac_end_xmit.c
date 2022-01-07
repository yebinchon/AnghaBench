
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int tx_bytes; int tx_packets; } ;
struct net_device {int dev; TYPE_1__ stats; } ;
struct cpmac_priv {int lock; int regs; struct cpmac_desc* desc_ring; } ;
struct cpmac_desc {TYPE_2__* skb; int data_mapping; scalar_t__ mapping; } ;
struct TYPE_6__ {scalar_t__ len; } ;


 int CPMAC_TX_ACK (int) ;
 int DMA_TO_DEVICE ;
 scalar_t__ __netif_subqueue_stopped (struct net_device*,int) ;
 int cpmac_write (int ,int ,int ) ;
 int dev_consume_skb_irq (TYPE_2__*) ;
 int dma_unmap_single (int *,int ,scalar_t__,int ) ;
 scalar_t__ likely (TYPE_2__*) ;
 scalar_t__ net_ratelimit () ;
 int netdev_dbg (struct net_device*,char*,TYPE_2__*,scalar_t__) ;
 struct cpmac_priv* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*) ;
 int netif_msg_tx_done (struct cpmac_priv*) ;
 scalar_t__ netif_msg_tx_err (struct cpmac_priv*) ;
 int netif_wake_subqueue (struct net_device*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void cpmac_end_xmit(struct net_device *dev, int queue)
{
 struct cpmac_desc *desc;
 struct cpmac_priv *priv = netdev_priv(dev);

 desc = &priv->desc_ring[queue];
 cpmac_write(priv->regs, CPMAC_TX_ACK(queue), (u32)desc->mapping);
 if (likely(desc->skb)) {
  spin_lock(&priv->lock);
  dev->stats.tx_packets++;
  dev->stats.tx_bytes += desc->skb->len;
  spin_unlock(&priv->lock);
  dma_unmap_single(&dev->dev, desc->data_mapping, desc->skb->len,
     DMA_TO_DEVICE);

  if (unlikely(netif_msg_tx_done(priv)))
   netdev_dbg(dev, "sent 0x%p, len=%d\n",
       desc->skb, desc->skb->len);

  dev_consume_skb_irq(desc->skb);
  desc->skb = ((void*)0);
  if (__netif_subqueue_stopped(dev, queue))
   netif_wake_subqueue(dev, queue);
 } else {
  if (netif_msg_tx_err(priv) && net_ratelimit())
   netdev_warn(dev, "end_xmit: spurious interrupt\n");
  if (__netif_subqueue_stopped(dev, queue))
   netif_wake_subqueue(dev, queue);
 }
}
