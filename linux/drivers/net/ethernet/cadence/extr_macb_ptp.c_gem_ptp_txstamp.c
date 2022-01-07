
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct macb_queue {unsigned long tx_ts_head; int tx_ts_task; struct gem_tx_ts* tx_timestamps; int bp; int tx_ts_tail; } ;
struct macb_dma_desc_ptp {int ts_2; int ts_1; } ;
struct macb_dma_desc {int ctrl; } ;
struct TYPE_3__ {int ts_2; int ts_1; } ;
struct gem_tx_ts {TYPE_1__ desc_ptp; struct sk_buff* skb; } ;
struct TYPE_4__ {int tx_flags; } ;


 scalar_t__ CIRC_SPACE (unsigned long,unsigned long,int) ;
 int DMA_TXVALID ;
 int EINVAL ;
 int ENOMEM ;
 int GEM_BFEXT (int ,int ) ;
 int PTP_TS_BUFFER_SIZE ;
 unsigned long READ_ONCE (int ) ;
 int SKBTX_IN_PROGRESS ;
 int dma_rmb () ;
 struct macb_dma_desc_ptp* macb_ptp_desc (int ,struct macb_dma_desc*) ;
 int schedule_work (int *) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 int smp_store_release (unsigned long*,unsigned long) ;

int gem_ptp_txstamp(struct macb_queue *queue, struct sk_buff *skb,
      struct macb_dma_desc *desc)
{
 unsigned long tail = READ_ONCE(queue->tx_ts_tail);
 unsigned long head = queue->tx_ts_head;
 struct macb_dma_desc_ptp *desc_ptp;
 struct gem_tx_ts *tx_timestamp;

 if (!GEM_BFEXT(DMA_TXVALID, desc->ctrl))
  return -EINVAL;

 if (CIRC_SPACE(head, tail, PTP_TS_BUFFER_SIZE) == 0)
  return -ENOMEM;

 skb_shinfo(skb)->tx_flags |= SKBTX_IN_PROGRESS;
 desc_ptp = macb_ptp_desc(queue->bp, desc);
 tx_timestamp = &queue->tx_timestamps[head];
 tx_timestamp->skb = skb;

 dma_rmb();
 tx_timestamp->desc_ptp.ts_1 = desc_ptp->ts_1;
 tx_timestamp->desc_ptp.ts_2 = desc_ptp->ts_2;

 smp_store_release(&queue->tx_ts_head,
     (head + 1) & (PTP_TS_BUFFER_SIZE - 1));

 schedule_work(&queue->tx_ts_task);
 return 0;
}
