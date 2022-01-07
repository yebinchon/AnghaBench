
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
typedef struct macb_queue* u16 ;
struct sk_buff {scalar_t__ len; int data; } ;
struct macb_tx_skb {struct sk_buff* skb; } ;
struct TYPE_8__ {int tx_bytes; int tx_packets; } ;
struct macb_queue {unsigned int tx_head; unsigned int tx_tail; TYPE_2__ stats; struct macb* bp; } ;
struct macb_dma_desc {int ctrl; } ;
struct macb {int queues; int caps; TYPE_4__* dev; int tx_ring_size; } ;
struct TYPE_7__ {int tx_bytes; int tx_packets; } ;
struct TYPE_10__ {TYPE_1__ stats; } ;
struct TYPE_9__ {int tx_flags; } ;


 scalar_t__ CIRC_CNT (unsigned int,unsigned int,int ) ;
 int ISR ;
 int MACB_BIT (int ) ;
 int MACB_CAPS_ISR_CLEAR_ON_WRITE ;
 scalar_t__ MACB_TX_WAKEUP_THRESH (struct macb*) ;
 int SKBTX_HW_TSTAMP ;
 int TCOMP ;
 int TSR ;
 int TX_USED ;
 scalar_t__ __netif_subqueue_stopped (TYPE_4__*,struct macb_queue*) ;
 scalar_t__ gem_ptp_do_txstamp (struct macb_queue*,struct sk_buff*,struct macb_dma_desc*) ;
 int macb_readl (struct macb*,int ) ;
 struct macb_dma_desc* macb_tx_desc (struct macb_queue*,unsigned int) ;
 int macb_tx_ring_wrap (struct macb*,unsigned int) ;
 struct macb_tx_skb* macb_tx_skb (struct macb_queue*,unsigned int) ;
 int macb_tx_unmap (struct macb*,struct macb_tx_skb*) ;
 int macb_writel (struct macb*,int ,int) ;
 int netdev_vdbg (TYPE_4__*,char*,unsigned long,...) ;
 int netif_wake_subqueue (TYPE_4__*,struct macb_queue*) ;
 int queue_writel (struct macb_queue*,int ,int) ;
 int rmb () ;
 TYPE_3__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void macb_tx_interrupt(struct macb_queue *queue)
{
 unsigned int tail;
 unsigned int head;
 u32 status;
 struct macb *bp = queue->bp;
 u16 queue_index = queue - bp->queues;

 status = macb_readl(bp, TSR);
 macb_writel(bp, TSR, status);

 if (bp->caps & MACB_CAPS_ISR_CLEAR_ON_WRITE)
  queue_writel(queue, ISR, MACB_BIT(TCOMP));

 netdev_vdbg(bp->dev, "macb_tx_interrupt status = 0x%03lx\n",
      (unsigned long)status);

 head = queue->tx_head;
 for (tail = queue->tx_tail; tail != head; tail++) {
  struct macb_tx_skb *tx_skb;
  struct sk_buff *skb;
  struct macb_dma_desc *desc;
  u32 ctrl;

  desc = macb_tx_desc(queue, tail);


  rmb();

  ctrl = desc->ctrl;




  if (!(ctrl & MACB_BIT(TX_USED)))
   break;


  for (;; tail++) {
   tx_skb = macb_tx_skb(queue, tail);
   skb = tx_skb->skb;


   if (skb) {
    if (unlikely(skb_shinfo(skb)->tx_flags &
          SKBTX_HW_TSTAMP) &&
        gem_ptp_do_txstamp(queue, skb, desc) == 0) {



     tx_skb->skb = ((void*)0);
    }
    netdev_vdbg(bp->dev, "skb %u (data %p) TX complete\n",
         macb_tx_ring_wrap(bp, tail),
         skb->data);
    bp->dev->stats.tx_packets++;
    queue->stats.tx_packets++;
    bp->dev->stats.tx_bytes += skb->len;
    queue->stats.tx_bytes += skb->len;
   }


   macb_tx_unmap(bp, tx_skb);





   if (skb)
    break;
  }
 }

 queue->tx_tail = tail;
 if (__netif_subqueue_stopped(bp->dev, queue_index) &&
     CIRC_CNT(queue->tx_head, queue->tx_tail,
       bp->tx_ring_size) <= MACB_TX_WAKEUP_THRESH(bp))
  netif_wake_subqueue(bp->dev, queue_index);
}
