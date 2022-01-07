
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct sk_buff {scalar_t__ len; int end; } ;
struct netdev_queue {int dummy; } ;
struct ena_tx_buffer {scalar_t__ tx_descs; scalar_t__ last_jiffies; struct sk_buff* skb; } ;
struct TYPE_3__ {int queue_wakeup; } ;
struct ena_ring {size_t next_to_clean; size_t* free_ids; int syncp; TYPE_1__ tx_stats; TYPE_2__* adapter; int ena_com_io_sq; int qid; int netdev; int ena_com_io_cq; int ring_size; struct ena_tx_buffer* tx_buffer_info; } ;
struct TYPE_4__ {int flags; } ;


 int ENA_FLAG_DEV_UP ;
 size_t ENA_TX_RING_IDX_NEXT (size_t,int ) ;
 int ENA_TX_WAKEUP_THRESH ;
 int __netif_tx_lock (struct netdev_queue*,int ) ;
 int __netif_tx_unlock (struct netdev_queue*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int ena_com_comp_ack (int ,int) ;
 int ena_com_sq_have_enough_space (int ,int ) ;
 int ena_com_tx_comp_req_id_get (int ,size_t*) ;
 int ena_com_update_dev_comp_head (int ) ;
 int ena_unmap_tx_skb (struct ena_ring*,struct ena_tx_buffer*) ;
 struct netdev_queue* netdev_get_tx_queue (int ,int ) ;
 int netdev_tx_completed_queue (struct netdev_queue*,int,int) ;
 int netif_dbg (TYPE_2__*,int ,int ,char*,int ,...) ;
 scalar_t__ netif_tx_queue_stopped (struct netdev_queue*) ;
 int netif_tx_wake_queue (struct netdev_queue*) ;
 int prefetch (int *) ;
 int smp_mb () ;
 int smp_processor_id () ;
 scalar_t__ test_bit (int ,int *) ;
 int tx_done ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 scalar_t__ unlikely (int) ;
 int validate_tx_req_id (struct ena_ring*,size_t) ;

__attribute__((used)) static int ena_clean_tx_irq(struct ena_ring *tx_ring, u32 budget)
{
 struct netdev_queue *txq;
 bool above_thresh;
 u32 tx_bytes = 0;
 u32 total_done = 0;
 u16 next_to_clean;
 u16 req_id;
 int tx_pkts = 0;
 int rc;

 next_to_clean = tx_ring->next_to_clean;
 txq = netdev_get_tx_queue(tx_ring->netdev, tx_ring->qid);

 while (tx_pkts < budget) {
  struct ena_tx_buffer *tx_info;
  struct sk_buff *skb;

  rc = ena_com_tx_comp_req_id_get(tx_ring->ena_com_io_cq,
      &req_id);
  if (rc)
   break;

  rc = validate_tx_req_id(tx_ring, req_id);
  if (rc)
   break;

  tx_info = &tx_ring->tx_buffer_info[req_id];
  skb = tx_info->skb;


  prefetch(&skb->end);

  tx_info->skb = ((void*)0);
  tx_info->last_jiffies = 0;

  ena_unmap_tx_skb(tx_ring, tx_info);

  netif_dbg(tx_ring->adapter, tx_done, tx_ring->netdev,
     "tx_poll: q %d skb %p completed\n", tx_ring->qid,
     skb);

  tx_bytes += skb->len;
  dev_kfree_skb(skb);
  tx_pkts++;
  total_done += tx_info->tx_descs;

  tx_ring->free_ids[next_to_clean] = req_id;
  next_to_clean = ENA_TX_RING_IDX_NEXT(next_to_clean,
           tx_ring->ring_size);
 }

 tx_ring->next_to_clean = next_to_clean;
 ena_com_comp_ack(tx_ring->ena_com_io_sq, total_done);
 ena_com_update_dev_comp_head(tx_ring->ena_com_io_cq);

 netdev_tx_completed_queue(txq, tx_pkts, tx_bytes);

 netif_dbg(tx_ring->adapter, tx_done, tx_ring->netdev,
    "tx_poll: q %d done. total pkts: %d\n",
    tx_ring->qid, tx_pkts);




 smp_mb();

 above_thresh = ena_com_sq_have_enough_space(tx_ring->ena_com_io_sq,
          ENA_TX_WAKEUP_THRESH);
 if (unlikely(netif_tx_queue_stopped(txq) && above_thresh)) {
  __netif_tx_lock(txq, smp_processor_id());
  above_thresh =
   ena_com_sq_have_enough_space(tx_ring->ena_com_io_sq,
           ENA_TX_WAKEUP_THRESH);
  if (netif_tx_queue_stopped(txq) && above_thresh &&
      test_bit(ENA_FLAG_DEV_UP, &tx_ring->adapter->flags)) {
   netif_tx_wake_queue(txq);
   u64_stats_update_begin(&tx_ring->syncp);
   tx_ring->tx_stats.queue_wakeup++;
   u64_stats_update_end(&tx_ring->syncp);
  }
  __netif_tx_unlock(txq);
 }

 return tx_pkts;
}
