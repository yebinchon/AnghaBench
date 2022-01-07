
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct sk_buff {int data; int head; int len; } ;
struct net_device {int dummy; } ;
struct macb_queue {int tx_tail; int tx_head; } ;
struct macb {int lock; int tx_ring_size; int dev; int max_tx_length; struct macb_queue* queues; } ;
typedef int netdev_tx_t ;
struct TYPE_4__ {scalar_t__ protocol; } ;
struct TYPE_3__ {scalar_t__ gso_size; unsigned int nr_frags; int * frags; } ;


 int CIRC_SPACE (int ,int ,int ) ;
 unsigned int DIV_ROUND_UP (unsigned int,int ) ;
 int DUMP_PREFIX_OFFSET ;
 scalar_t__ IPPROTO_UDP ;
 int KERN_DEBUG ;
 int MACB_BIT (int ) ;
 int NCR ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int TSTART ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 TYPE_2__* ip_hdr (struct sk_buff*) ;
 scalar_t__ macb_clear_csum (struct sk_buff*) ;
 scalar_t__ macb_pad_and_fcs (struct sk_buff**,struct net_device*) ;
 int macb_readl (struct macb*,int ) ;
 int macb_tx_map (struct macb*,struct macb_queue*,struct sk_buff*,unsigned int) ;
 int macb_writel (struct macb*,int ,int) ;
 unsigned int min (unsigned int,int ) ;
 int netdev_dbg (int ,char*,int ,int ) ;
 int netdev_err (int ,char*) ;
 struct macb* netdev_priv (struct net_device*) ;
 int netdev_vdbg (int ,char*,size_t,int ,int ,int ,int ,int ) ;
 int netif_stop_subqueue (struct net_device*,size_t) ;
 int print_hex_dump (int ,char*,int ,int,int,int ,int,int) ;
 int skb_end_pointer (struct sk_buff*) ;
 unsigned int skb_frag_size (int *) ;
 size_t skb_get_queue_mapping (struct sk_buff*) ;
 unsigned int skb_headlen (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int skb_tail_pointer (struct sk_buff*) ;
 unsigned int skb_transport_offset (struct sk_buff*) ;
 int skb_tx_timestamp (struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int tcp_hdrlen (struct sk_buff*) ;
 int wmb () ;

__attribute__((used)) static netdev_tx_t macb_start_xmit(struct sk_buff *skb, struct net_device *dev)
{
 u16 queue_index = skb_get_queue_mapping(skb);
 struct macb *bp = netdev_priv(dev);
 struct macb_queue *queue = &bp->queues[queue_index];
 unsigned long flags;
 unsigned int desc_cnt, nr_frags, frag_size, f;
 unsigned int hdrlen;
 bool is_lso, is_udp = 0;
 netdev_tx_t ret = NETDEV_TX_OK;

 if (macb_clear_csum(skb)) {
  dev_kfree_skb_any(skb);
  return ret;
 }

 if (macb_pad_and_fcs(&skb, dev)) {
  dev_kfree_skb_any(skb);
  return ret;
 }

 is_lso = (skb_shinfo(skb)->gso_size != 0);

 if (is_lso) {
  is_udp = !!(ip_hdr(skb)->protocol == IPPROTO_UDP);


  if (is_udp)

   hdrlen = skb_transport_offset(skb);
  else
   hdrlen = skb_transport_offset(skb) + tcp_hdrlen(skb);
  if (skb_headlen(skb) < hdrlen) {
   netdev_err(bp->dev, "Error - LSO headers fragmented!!!\n");

   return NETDEV_TX_BUSY;
  }
 } else
  hdrlen = min(skb_headlen(skb), bp->max_tx_length);
 if (is_lso && (skb_headlen(skb) > hdrlen))

  desc_cnt = DIV_ROUND_UP((skb_headlen(skb) - hdrlen), bp->max_tx_length) + 1;
 else
  desc_cnt = DIV_ROUND_UP(skb_headlen(skb), bp->max_tx_length);
 nr_frags = skb_shinfo(skb)->nr_frags;
 for (f = 0; f < nr_frags; f++) {
  frag_size = skb_frag_size(&skb_shinfo(skb)->frags[f]);
  desc_cnt += DIV_ROUND_UP(frag_size, bp->max_tx_length);
 }

 spin_lock_irqsave(&bp->lock, flags);


 if (CIRC_SPACE(queue->tx_head, queue->tx_tail,
         bp->tx_ring_size) < desc_cnt) {
  netif_stop_subqueue(dev, queue_index);
  spin_unlock_irqrestore(&bp->lock, flags);
  netdev_dbg(bp->dev, "tx_head = %u, tx_tail = %u\n",
      queue->tx_head, queue->tx_tail);
  return NETDEV_TX_BUSY;
 }


 if (!macb_tx_map(bp, queue, skb, hdrlen)) {
  dev_kfree_skb_any(skb);
  goto unlock;
 }


 wmb();
 skb_tx_timestamp(skb);

 macb_writel(bp, NCR, macb_readl(bp, NCR) | MACB_BIT(TSTART));

 if (CIRC_SPACE(queue->tx_head, queue->tx_tail, bp->tx_ring_size) < 1)
  netif_stop_subqueue(dev, queue_index);

unlock:
 spin_unlock_irqrestore(&bp->lock, flags);

 return ret;
}
