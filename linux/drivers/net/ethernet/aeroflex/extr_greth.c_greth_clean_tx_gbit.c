
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_5__ {int tx_bytes; } ;
struct net_device {TYPE_2__ stats; } ;
struct greth_private {size_t tx_last; size_t tx_next; int dev; struct greth_bd* tx_bd_base; struct sk_buff** tx_skbuff; TYPE_1__* regs; } ;
struct greth_bd {int addr; int stat; } ;
typedef int skb_frag_t ;
struct TYPE_6__ {int nr_frags; int * frags; } ;
struct TYPE_4__ {int status; } ;


 int DMA_TO_DEVICE ;
 int GRETH_BD_EN ;
 int GRETH_INT_TE ;
 int GRETH_INT_TX ;
 int GRETH_REGSAVE (int ,int) ;
 scalar_t__ MAX_SKB_FRAGS ;
 size_t NEXT_TX (size_t) ;
 int SKIP_TX (size_t,int) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dma_unmap_page (int ,int,int ,int ) ;
 int dma_unmap_single (int ,int,int ,int ) ;
 scalar_t__ greth_num_free_bds (size_t,size_t) ;
 int greth_read_bd (int *) ;
 int greth_update_tx_stats (struct net_device*,int) ;
 int mb () ;
 struct greth_private* netdev_priv (struct net_device*) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int skb_frag_size (int *) ;
 int skb_headlen (struct sk_buff*) ;
 TYPE_3__* skb_shinfo (struct sk_buff*) ;
 int wmb () ;

__attribute__((used)) static void greth_clean_tx_gbit(struct net_device *dev)
{
 struct greth_private *greth;
 struct greth_bd *bdp, *bdp_last_frag;
 struct sk_buff *skb = ((void*)0);
 u32 stat;
 int nr_frags, i;
 u16 tx_last;

 greth = netdev_priv(dev);
 tx_last = greth->tx_last;

 while (tx_last != greth->tx_next) {

  skb = greth->tx_skbuff[tx_last];

  nr_frags = skb_shinfo(skb)->nr_frags;


  bdp_last_frag = greth->tx_bd_base + SKIP_TX(tx_last, nr_frags);

  GRETH_REGSAVE(greth->regs->status, GRETH_INT_TE | GRETH_INT_TX);
  mb();
  stat = greth_read_bd(&bdp_last_frag->stat);

  if (stat & GRETH_BD_EN)
   break;

  greth->tx_skbuff[tx_last] = ((void*)0);

  greth_update_tx_stats(dev, stat);
  dev->stats.tx_bytes += skb->len;

  bdp = greth->tx_bd_base + tx_last;

  tx_last = NEXT_TX(tx_last);

  dma_unmap_single(greth->dev,
     greth_read_bd(&bdp->addr),
     skb_headlen(skb),
     DMA_TO_DEVICE);

  for (i = 0; i < nr_frags; i++) {
   skb_frag_t *frag = &skb_shinfo(skb)->frags[i];
   bdp = greth->tx_bd_base + tx_last;

   dma_unmap_page(greth->dev,
           greth_read_bd(&bdp->addr),
           skb_frag_size(frag),
           DMA_TO_DEVICE);

   tx_last = NEXT_TX(tx_last);
  }
  dev_kfree_skb(skb);
 }
 if (skb) {
  wmb();
  greth->tx_last = tx_last;

  if (netif_queue_stopped(dev) &&
      (greth_num_free_bds(tx_last, greth->tx_next) >
      (MAX_SKB_FRAGS+1)))
   netif_wake_queue(dev);
 }
}
