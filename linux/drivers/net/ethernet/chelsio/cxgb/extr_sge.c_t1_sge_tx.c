
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ dev; } ;
struct TYPE_3__ {int * cmdQ_full; } ;
struct sge {scalar_t__ tx_sched; TYPE_1__ stats; int stopped_tx_queues; struct cmdQ* cmdQ; } ;
struct net_device {int if_port; } ;
struct cmdQ {unsigned int pidx; unsigned int size; unsigned int in_use; unsigned int stop_thres; unsigned int genbit; int lock; int status; } ;
struct adapter {scalar_t__ regs; int name; struct sge* sge; } ;
struct TYPE_4__ {int nr_frags; } ;


 scalar_t__ A_SG_DOORBELL ;
 int CMDQ_STAT_LAST_PKT_DB ;
 int CMDQ_STAT_RUNNING ;
 int F_CMDQ0_ENABLE ;
 int F_CMDQ1_ENABLE ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int clear_bit (int ,int *) ;
 scalar_t__ compute_large_page_tx_descs (struct sk_buff*) ;
 int doorbell_pio (struct adapter*,int ) ;
 int netif_queue_stopped (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int pr_err (char*,int ) ;
 int reclaim_completed_tx (struct sge*,struct cmdQ*) ;
 struct sk_buff* sched_skb (struct sge*,struct sk_buff*,unsigned int) ;
 int set_bit (int ,int *) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 int spin_lock (int *) ;
 scalar_t__ spin_trylock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;
 int write_tx_descs (struct adapter*,struct sk_buff*,unsigned int,unsigned int,struct cmdQ*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int t1_sge_tx(struct sk_buff *skb, struct adapter *adapter,
       unsigned int qid, struct net_device *dev)
{
 struct sge *sge = adapter->sge;
 struct cmdQ *q = &sge->cmdQ[qid];
 unsigned int credits, pidx, genbit, count, use_sched_skb = 0;

 spin_lock(&q->lock);

 reclaim_completed_tx(sge, q);

 pidx = q->pidx;
 credits = q->size - q->in_use;
 count = 1 + skb_shinfo(skb)->nr_frags;
 count += compute_large_page_tx_descs(skb);


 if (unlikely(credits < count)) {
  if (!netif_queue_stopped(dev)) {
   netif_stop_queue(dev);
   set_bit(dev->if_port, &sge->stopped_tx_queues);
   sge->stats.cmdQ_full[2]++;
   pr_err("%s: Tx ring full while queue awake!\n",
          adapter->name);
  }
  spin_unlock(&q->lock);
  return NETDEV_TX_BUSY;
 }

 if (unlikely(credits - count < q->stop_thres)) {
  netif_stop_queue(dev);
  set_bit(dev->if_port, &sge->stopped_tx_queues);
  sge->stats.cmdQ_full[2]++;
 }




 if (sge->tx_sched && !qid && skb->dev) {
use_sched:
  use_sched_skb = 1;



  skb = sched_skb(sge, skb, credits);
  if (!skb) {
   spin_unlock(&q->lock);
   return NETDEV_TX_OK;
  }
  pidx = q->pidx;
  count = 1 + skb_shinfo(skb)->nr_frags;
  count += compute_large_page_tx_descs(skb);
 }

 q->in_use += count;
 genbit = q->genbit;
 pidx = q->pidx;
 q->pidx += count;
 if (q->pidx >= q->size) {
  q->pidx -= q->size;
  q->genbit ^= 1;
 }
 spin_unlock(&q->lock);

 write_tx_descs(adapter, skb, pidx, genbit, q);
 if (qid)
  doorbell_pio(adapter, F_CMDQ1_ENABLE);
 else {
  clear_bit(CMDQ_STAT_LAST_PKT_DB, &q->status);
  if (test_and_set_bit(CMDQ_STAT_RUNNING, &q->status) == 0) {
   set_bit(CMDQ_STAT_LAST_PKT_DB, &q->status);
   writel(F_CMDQ0_ENABLE, adapter->regs + A_SG_DOORBELL);
  }
 }

 if (use_sched_skb) {
  if (spin_trylock(&q->lock)) {
   credits = q->size - q->in_use;
   skb = ((void*)0);
   goto use_sched;
  }
 }
 return NETDEV_TX_OK;
}
