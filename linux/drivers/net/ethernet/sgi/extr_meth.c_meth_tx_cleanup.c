
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct TYPE_6__ {int tx_errors; int tx_bytes; int tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct meth_private {unsigned long tx_read; size_t tx_write; int meth_lock; int tx_count; TYPE_3__* tx_ring; struct sk_buff** tx_skbs; int dma_ctrl; } ;
struct TYPE_9__ {int int_stat; int dma_ctrl; } ;
struct TYPE_10__ {TYPE_4__ eth; } ;
struct TYPE_7__ {unsigned long raw; } ;
struct TYPE_8__ {TYPE_2__ header; } ;


 int DPRINTK (char*,...) ;
 int METH_DMA_TX_INT_EN ;
 int METH_INT_TX_EMPTY ;
 int METH_INT_TX_PKT ;
 unsigned long METH_TX_ST_DEFER ;
 unsigned long METH_TX_ST_DONE ;
 unsigned long METH_TX_ST_EXCCOLL ;
 unsigned long METH_TX_ST_LATECOLL ;
 unsigned long METH_TX_ST_SUCCESS ;
 unsigned long METH_TX_ST_TOOLONG ;
 unsigned long METH_TX_ST_UNDERRUN ;
 unsigned long TX_INFO_RPTR ;
 int TX_RING_ENTRIES ;
 int dev_consume_skb_irq (struct sk_buff*) ;
 TYPE_5__* mace ;
 int meth_tx_full (struct net_device*) ;
 struct meth_private* netdev_priv (struct net_device*) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int printk (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void meth_tx_cleanup(struct net_device* dev, unsigned long int_status)
{
 struct meth_private *priv = netdev_priv(dev);
 unsigned long status, flags;
 struct sk_buff *skb;
 unsigned long rptr = (int_status&TX_INFO_RPTR) >> 16;

 spin_lock_irqsave(&priv->meth_lock, flags);


 priv->dma_ctrl &= ~(METH_DMA_TX_INT_EN);
 mace->eth.dma_ctrl = priv->dma_ctrl;

 while (priv->tx_read != rptr) {
  skb = priv->tx_skbs[priv->tx_read];
  status = priv->tx_ring[priv->tx_read].header.raw;




  if (status & METH_TX_ST_DONE) {
   if (status & METH_TX_ST_SUCCESS){
    dev->stats.tx_packets++;
    dev->stats.tx_bytes += skb->len;
   } else {
    dev->stats.tx_errors++;
   }
  } else {
   DPRINTK("RPTR points us here, but packet not done?\n");
   break;
  }
  dev_consume_skb_irq(skb);
  priv->tx_skbs[priv->tx_read] = ((void*)0);
  priv->tx_ring[priv->tx_read].header.raw = 0;
  priv->tx_read = (priv->tx_read+1)&(TX_RING_ENTRIES-1);
  priv->tx_count--;
 }


 if (netif_queue_stopped(dev) && !meth_tx_full(dev)) {
  netif_wake_queue(dev);
 }

 mace->eth.int_stat = METH_INT_TX_EMPTY | METH_INT_TX_PKT;
 spin_unlock_irqrestore(&priv->meth_lock, flags);
}
