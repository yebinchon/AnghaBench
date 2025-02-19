
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct virtnet_info {struct send_queue* sq; } ;
struct sk_buff {int dummy; } ;
struct TYPE_10__ {int syncp; int kicks; } ;
struct TYPE_8__ {int weight; } ;
struct send_queue {TYPE_3__ stats; TYPE_4__* vq; TYPE_1__ napi; } ;
struct netdev_queue {int dummy; } ;
struct TYPE_9__ {int tx_dropped; int tx_fifo_errors; } ;
struct net_device {TYPE_2__ stats; int dev; } ;
typedef int netdev_tx_t ;
struct TYPE_11__ {scalar_t__ num_free; } ;


 scalar_t__ MAX_SKB_FRAGS ;
 int NETDEV_TX_OK ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dev_warn (int *,char*,int,int) ;
 int free_old_xmit_skbs (struct send_queue*,int) ;
 scalar_t__ net_ratelimit () ;
 struct netdev_queue* netdev_get_tx_queue (struct net_device*,int) ;
 struct virtnet_info* netdev_priv (struct net_device*) ;
 int netdev_xmit_more () ;
 int netif_start_subqueue (struct net_device*,int) ;
 int netif_stop_subqueue (struct net_device*,int) ;
 scalar_t__ netif_xmit_stopped (struct netdev_queue*) ;
 int nf_reset_ct (struct sk_buff*) ;
 int skb_get_queue_mapping (struct sk_buff*) ;
 int skb_orphan (struct sk_buff*) ;
 int skb_tx_timestamp (struct sk_buff*) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 scalar_t__ unlikely (int) ;
 int virtqueue_disable_cb (TYPE_4__*) ;
 int virtqueue_enable_cb_delayed (TYPE_4__*) ;
 scalar_t__ virtqueue_kick_prepare (TYPE_4__*) ;
 scalar_t__ virtqueue_notify (TYPE_4__*) ;
 int xmit_skb (struct send_queue*,struct sk_buff*) ;

__attribute__((used)) static netdev_tx_t start_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct virtnet_info *vi = netdev_priv(dev);
 int qnum = skb_get_queue_mapping(skb);
 struct send_queue *sq = &vi->sq[qnum];
 int err;
 struct netdev_queue *txq = netdev_get_tx_queue(dev, qnum);
 bool kick = !netdev_xmit_more();
 bool use_napi = sq->napi.weight;


 free_old_xmit_skbs(sq, 0);

 if (use_napi && kick)
  virtqueue_enable_cb_delayed(sq->vq);


 skb_tx_timestamp(skb);


 err = xmit_skb(sq, skb);


 if (unlikely(err)) {
  dev->stats.tx_fifo_errors++;
  if (net_ratelimit())
   dev_warn(&dev->dev,
     "Unexpected TXQ (%d) queue failure: %d\n",
     qnum, err);
  dev->stats.tx_dropped++;
  dev_kfree_skb_any(skb);
  return NETDEV_TX_OK;
 }


 if (!use_napi) {
  skb_orphan(skb);
  nf_reset_ct(skb);
 }
 if (sq->vq->num_free < 2+MAX_SKB_FRAGS) {
  netif_stop_subqueue(dev, qnum);
  if (!use_napi &&
      unlikely(!virtqueue_enable_cb_delayed(sq->vq))) {

   free_old_xmit_skbs(sq, 0);
   if (sq->vq->num_free >= 2+MAX_SKB_FRAGS) {
    netif_start_subqueue(dev, qnum);
    virtqueue_disable_cb(sq->vq);
   }
  }
 }

 if (kick || netif_xmit_stopped(txq)) {
  if (virtqueue_kick_prepare(sq->vq) && virtqueue_notify(sq->vq)) {
   u64_stats_update_begin(&sq->stats.syncp);
   sq->stats.kicks++;
   u64_stats_update_end(&sq->stats.syncp);
  }
 }

 return NETDEV_TX_OK;
}
