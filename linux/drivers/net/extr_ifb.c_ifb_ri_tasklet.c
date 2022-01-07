
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int tc_skip_classify; int mac_len; int tc_from_ingress; int skb_iif; int dev; scalar_t__ len; scalar_t__ tc_redirected; } ;
struct netdev_queue {int dummy; } ;
struct ifb_q_private {int tasklet_pending; int ifb_tasklet; int rq; TYPE_2__* dev; int tq; int tsync; int tx_bytes; int tx_packets; int txqnum; } ;
struct TYPE_4__ {int tx_dropped; } ;
struct TYPE_5__ {int ifindex; TYPE_1__ stats; } ;


 scalar_t__ __netif_tx_trylock (struct netdev_queue*) ;
 int __netif_tx_unlock (struct netdev_queue*) ;
 struct sk_buff* __skb_dequeue (int *) ;
 int dev_get_by_index_rcu (int ,int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dev_net (TYPE_2__*) ;
 int dev_queue_xmit (struct sk_buff*) ;
 struct netdev_queue* netdev_get_tx_queue (TYPE_2__*,int ) ;
 int netif_receive_skb (struct sk_buff*) ;
 scalar_t__ netif_tx_queue_stopped (struct netdev_queue*) ;
 int netif_tx_wake_queue (struct netdev_queue*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct sk_buff* skb_peek (int *) ;
 int skb_pull_rcsum (struct sk_buff*,int ) ;
 scalar_t__ skb_queue_len (int *) ;
 int skb_queue_splice_tail_init (int *,int *) ;
 int tasklet_schedule (int *) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static void ifb_ri_tasklet(unsigned long _txp)
{
 struct ifb_q_private *txp = (struct ifb_q_private *)_txp;
 struct netdev_queue *txq;
 struct sk_buff *skb;

 txq = netdev_get_tx_queue(txp->dev, txp->txqnum);
 skb = skb_peek(&txp->tq);
 if (!skb) {
  if (!__netif_tx_trylock(txq))
   goto resched;
  skb_queue_splice_tail_init(&txp->rq, &txp->tq);
  __netif_tx_unlock(txq);
 }

 while ((skb = __skb_dequeue(&txp->tq)) != ((void*)0)) {
  skb->tc_redirected = 0;
  skb->tc_skip_classify = 1;

  u64_stats_update_begin(&txp->tsync);
  txp->tx_packets++;
  txp->tx_bytes += skb->len;
  u64_stats_update_end(&txp->tsync);

  rcu_read_lock();
  skb->dev = dev_get_by_index_rcu(dev_net(txp->dev), skb->skb_iif);
  if (!skb->dev) {
   rcu_read_unlock();
   dev_kfree_skb(skb);
   txp->dev->stats.tx_dropped++;
   if (skb_queue_len(&txp->tq) != 0)
    goto resched;
   break;
  }
  rcu_read_unlock();
  skb->skb_iif = txp->dev->ifindex;

  if (!skb->tc_from_ingress) {
   dev_queue_xmit(skb);
  } else {
   skb_pull_rcsum(skb, skb->mac_len);
   netif_receive_skb(skb);
  }
 }

 if (__netif_tx_trylock(txq)) {
  skb = skb_peek(&txp->rq);
  if (!skb) {
   txp->tasklet_pending = 0;
   if (netif_tx_queue_stopped(txq))
    netif_tx_wake_queue(txq);
  } else {
   __netif_tx_unlock(txq);
   goto resched;
  }
  __netif_tx_unlock(txq);
 } else {
resched:
  txp->tasklet_pending = 1;
  tasklet_schedule(&txp->ifb_tasklet);
 }

}
