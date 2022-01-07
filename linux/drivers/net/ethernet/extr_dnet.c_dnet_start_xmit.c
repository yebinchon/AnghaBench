
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct sk_buff {int len; scalar_t__ data; int head; } ;
struct net_device {int dummy; } ;
struct dnet {int lock; } ;
typedef int netdev_tx_t ;


 unsigned int DNET_FIFO_SIZE ;
 scalar_t__ DNET_FIFO_TX_DATA_AF_TH ;
 unsigned long DNET_INTR_ENB_TX_FIFOAE ;
 int INTR_ENB ;
 int INTR_SRC ;
 int NETDEV_TX_OK ;
 int TX_DATA_FIFO ;
 int TX_FIFO_WCNT ;
 int TX_LEN_FIFO ;
 int TX_STATUS ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dnet_print_skb (struct sk_buff*) ;
 scalar_t__ dnet_readl (struct dnet*,int ) ;
 int dnet_writel (struct dnet*,unsigned long,int ) ;
 struct dnet* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int pr_debug (char*,int,int ,scalar_t__) ;
 int skb_tx_timestamp (struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static netdev_tx_t dnet_start_xmit(struct sk_buff *skb, struct net_device *dev)
{

 struct dnet *bp = netdev_priv(dev);
 u32 tx_status, irq_enable;
 unsigned int len, i, tx_cmd, wrsz;
 unsigned long flags;
 unsigned int *bufp;

 tx_status = dnet_readl(bp, TX_STATUS);

 pr_debug("start_xmit: len %u head %p data %p\n",
        skb->len, skb->head, skb->data);
 dnet_print_skb(skb);


 len = (skb->len + 3) >> 2;

 spin_lock_irqsave(&bp->lock, flags);

 tx_status = dnet_readl(bp, TX_STATUS);

 bufp = (unsigned int *)(((unsigned long) skb->data) & ~0x3UL);
 wrsz = (u32) skb->len + 3;
 wrsz += ((unsigned long) skb->data) & 0x3;
 wrsz >>= 2;
 tx_cmd = ((((unsigned long)(skb->data)) & 0x03) << 16) | (u32) skb->len;


 if (wrsz < (DNET_FIFO_SIZE - dnet_readl(bp, TX_FIFO_WCNT))) {
  for (i = 0; i < wrsz; i++)
   dnet_writel(bp, *bufp++, TX_DATA_FIFO);





  dnet_writel(bp, tx_cmd, TX_LEN_FIFO);
 }

 if (dnet_readl(bp, TX_FIFO_WCNT) > DNET_FIFO_TX_DATA_AF_TH) {
  netif_stop_queue(dev);
  tx_status = dnet_readl(bp, INTR_SRC);
  irq_enable = dnet_readl(bp, INTR_ENB);
  irq_enable |= DNET_INTR_ENB_TX_FIFOAE;
  dnet_writel(bp, irq_enable, INTR_ENB);
 }

 skb_tx_timestamp(skb);


 dev_kfree_skb(skb);

 spin_unlock_irqrestore(&bp->lock, flags);

 return NETDEV_TX_OK;
}
