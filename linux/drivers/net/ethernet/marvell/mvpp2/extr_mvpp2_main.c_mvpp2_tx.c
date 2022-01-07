
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct sk_buff {scalar_t__ len; int data; } ;
struct netdev_queue {int dummy; } ;
struct TYPE_6__ {int tx_dropped; } ;
struct TYPE_5__ {int parent; } ;
struct net_device {TYPE_2__ stats; TYPE_1__ dev; } ;
struct mvpp2_txq_pcpu {int reserved_num; int count; int stop_threshold; } ;
struct mvpp2_tx_queue {int count; int done_pkts_coal; int id; int pcpu; } ;
struct mvpp2_tx_desc {int dummy; } ;
struct mvpp2_port_pcpu {int timer_scheduled; int tx_done_timer; } ;
struct mvpp2_port {int * tx_lock; TYPE_4__* priv; int pcpu; int has_tx_irqs; int stats; struct mvpp2_tx_queue** txqs; } ;
struct mvpp2_pcpu_stats {int syncp; int tx_bytes; int tx_packets; } ;
typedef int netdev_tx_t ;
typedef int dma_addr_t ;
struct TYPE_8__ {int lock_map; struct mvpp2_tx_queue* aggr_txqs; } ;
struct TYPE_7__ {int nr_frags; } ;


 int DMA_TO_DEVICE ;
 int HRTIMER_MODE_REL_PINNED_SOFT ;
 int MVPP2_TXDONE_HRTIMER_PERIOD_NS ;
 int MVPP2_TXD_F_DESC ;
 int MVPP2_TXD_L_DESC ;
 int MVPP2_TXD_PADDING_DISABLE ;
 int NETDEV_TX_OK ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_map_single (int ,int ,int ,int ) ;
 int dma_mapping_error (int ,int ) ;
 int hrtimer_start (int *,int ,int ) ;
 scalar_t__ mvpp2_aggr_desc_num_check (struct mvpp2_port*,struct mvpp2_tx_queue*,int) ;
 int mvpp2_aggr_txq_pend_desc_add (struct mvpp2_port*,int) ;
 unsigned int mvpp2_cpu_to_thread (TYPE_4__*,int ) ;
 int mvpp2_skb_tx_csum (struct mvpp2_port*,struct sk_buff*) ;
 scalar_t__ mvpp2_tx_frag_process (struct mvpp2_port*,struct sk_buff*,struct mvpp2_tx_queue*,struct mvpp2_tx_queue*) ;
 int mvpp2_tx_tso (struct sk_buff*,struct net_device*,struct mvpp2_tx_queue*,struct mvpp2_tx_queue*,struct mvpp2_txq_pcpu*) ;
 int mvpp2_txdesc_cmd_set (struct mvpp2_port*,struct mvpp2_tx_desc*,int) ;
 int mvpp2_txdesc_dma_addr_set (struct mvpp2_port*,struct mvpp2_tx_desc*,int ) ;
 int mvpp2_txdesc_size_set (struct mvpp2_port*,struct mvpp2_tx_desc*,int ) ;
 int mvpp2_txdesc_txq_set (struct mvpp2_port*,struct mvpp2_tx_desc*,int ) ;
 int mvpp2_txq_desc_put (struct mvpp2_tx_queue*) ;
 int mvpp2_txq_done (struct mvpp2_port*,struct mvpp2_tx_queue*,struct mvpp2_txq_pcpu*) ;
 int mvpp2_txq_inc_put (struct mvpp2_port*,struct mvpp2_txq_pcpu*,struct sk_buff*,struct mvpp2_tx_desc*) ;
 struct mvpp2_tx_desc* mvpp2_txq_next_desc_get (struct mvpp2_tx_queue*) ;
 scalar_t__ mvpp2_txq_reserved_desc_num_proc (struct mvpp2_port*,struct mvpp2_tx_queue*,struct mvpp2_txq_pcpu*,int) ;
 struct netdev_queue* netdev_get_tx_queue (struct net_device*,size_t) ;
 struct mvpp2_port* netdev_priv (struct net_device*) ;
 int netif_tx_stop_queue (struct netdev_queue*) ;
 void* per_cpu_ptr (int ,unsigned int) ;
 size_t skb_get_queue_mapping (struct sk_buff*) ;
 int skb_headlen (struct sk_buff*) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;
 TYPE_3__* skb_shinfo (struct sk_buff*) ;
 int smp_processor_id () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (unsigned int,int *) ;
 int tx_desc_unmap_put (struct mvpp2_port*,struct mvpp2_tx_queue*,struct mvpp2_tx_desc*) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 scalar_t__ unlikely (int ) ;
 int wmb () ;

__attribute__((used)) static netdev_tx_t mvpp2_tx(struct sk_buff *skb, struct net_device *dev)
{
 struct mvpp2_port *port = netdev_priv(dev);
 struct mvpp2_tx_queue *txq, *aggr_txq;
 struct mvpp2_txq_pcpu *txq_pcpu;
 struct mvpp2_tx_desc *tx_desc;
 dma_addr_t buf_dma_addr;
 unsigned long flags = 0;
 unsigned int thread;
 int frags = 0;
 u16 txq_id;
 u32 tx_cmd;

 thread = mvpp2_cpu_to_thread(port->priv, smp_processor_id());

 txq_id = skb_get_queue_mapping(skb);
 txq = port->txqs[txq_id];
 txq_pcpu = per_cpu_ptr(txq->pcpu, thread);
 aggr_txq = &port->priv->aggr_txqs[thread];

 if (test_bit(thread, &port->priv->lock_map))
  spin_lock_irqsave(&port->tx_lock[thread], flags);

 if (skb_is_gso(skb)) {
  frags = mvpp2_tx_tso(skb, dev, txq, aggr_txq, txq_pcpu);
  goto out;
 }
 frags = skb_shinfo(skb)->nr_frags + 1;


 if (mvpp2_aggr_desc_num_check(port, aggr_txq, frags) ||
     mvpp2_txq_reserved_desc_num_proc(port, txq, txq_pcpu, frags)) {
  frags = 0;
  goto out;
 }


 tx_desc = mvpp2_txq_next_desc_get(aggr_txq);
 mvpp2_txdesc_txq_set(port, tx_desc, txq->id);
 mvpp2_txdesc_size_set(port, tx_desc, skb_headlen(skb));

 buf_dma_addr = dma_map_single(dev->dev.parent, skb->data,
          skb_headlen(skb), DMA_TO_DEVICE);
 if (unlikely(dma_mapping_error(dev->dev.parent, buf_dma_addr))) {
  mvpp2_txq_desc_put(txq);
  frags = 0;
  goto out;
 }

 mvpp2_txdesc_dma_addr_set(port, tx_desc, buf_dma_addr);

 tx_cmd = mvpp2_skb_tx_csum(port, skb);

 if (frags == 1) {

  tx_cmd |= MVPP2_TXD_F_DESC | MVPP2_TXD_L_DESC;
  mvpp2_txdesc_cmd_set(port, tx_desc, tx_cmd);
  mvpp2_txq_inc_put(port, txq_pcpu, skb, tx_desc);
 } else {

  tx_cmd |= MVPP2_TXD_F_DESC | MVPP2_TXD_PADDING_DISABLE;
  mvpp2_txdesc_cmd_set(port, tx_desc, tx_cmd);
  mvpp2_txq_inc_put(port, txq_pcpu, ((void*)0), tx_desc);


  if (mvpp2_tx_frag_process(port, skb, aggr_txq, txq)) {
   tx_desc_unmap_put(port, txq, tx_desc);
   frags = 0;
  }
 }

out:
 if (frags > 0) {
  struct mvpp2_pcpu_stats *stats = per_cpu_ptr(port->stats, thread);
  struct netdev_queue *nq = netdev_get_tx_queue(dev, txq_id);

  txq_pcpu->reserved_num -= frags;
  txq_pcpu->count += frags;
  aggr_txq->count += frags;


  wmb();
  mvpp2_aggr_txq_pend_desc_add(port, frags);

  if (txq_pcpu->count >= txq_pcpu->stop_threshold)
   netif_tx_stop_queue(nq);

  u64_stats_update_begin(&stats->syncp);
  stats->tx_packets++;
  stats->tx_bytes += skb->len;
  u64_stats_update_end(&stats->syncp);
 } else {
  dev->stats.tx_dropped++;
  dev_kfree_skb_any(skb);
 }


 if (!port->has_tx_irqs && txq_pcpu->count >= txq->done_pkts_coal)
  mvpp2_txq_done(port, txq, txq_pcpu);


 if (!port->has_tx_irqs && txq_pcpu->count <= frags &&
     txq_pcpu->count > 0) {
  struct mvpp2_port_pcpu *port_pcpu = per_cpu_ptr(port->pcpu, thread);

  if (!port_pcpu->timer_scheduled) {
   port_pcpu->timer_scheduled = 1;
   hrtimer_start(&port_pcpu->tx_done_timer,
          MVPP2_TXDONE_HRTIMER_PERIOD_NS,
          HRTIMER_MODE_REL_PINNED_SOFT);
  }
 }

 if (test_bit(thread, &port->priv->lock_map))
  spin_unlock_irqrestore(&port->tx_lock[thread], flags);

 return NETDEV_TX_OK;
}
