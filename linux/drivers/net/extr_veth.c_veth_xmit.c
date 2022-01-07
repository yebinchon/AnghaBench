
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veth_rq {int xdp_prog; } ;
struct veth_priv {int dropped; struct veth_rq* rq; int peer; } ;
struct sk_buff {int len; } ;
struct pcpu_lstats {int bytes; int syncp; int packets; } ;
struct net_device {int real_num_rx_queues; int lstats; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_OK ;
 scalar_t__ NET_RX_SUCCESS ;
 int __veth_xdp_flush (struct veth_rq*) ;
 int atomic64_inc (int *) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ likely (int) ;
 struct veth_priv* netdev_priv (struct net_device*) ;
 int rcu_access_pointer (int ) ;
 struct net_device* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int skb_get_queue_mapping (struct sk_buff*) ;
 int skb_record_rx_queue (struct sk_buff*,int) ;
 int skb_tx_timestamp (struct sk_buff*) ;
 struct pcpu_lstats* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ veth_forward_skb (struct net_device*,struct sk_buff*,struct veth_rq*,int) ;

__attribute__((used)) static netdev_tx_t veth_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct veth_priv *rcv_priv, *priv = netdev_priv(dev);
 struct veth_rq *rq = ((void*)0);
 struct net_device *rcv;
 int length = skb->len;
 bool rcv_xdp = 0;
 int rxq;

 rcu_read_lock();
 rcv = rcu_dereference(priv->peer);
 if (unlikely(!rcv)) {
  kfree_skb(skb);
  goto drop;
 }

 rcv_priv = netdev_priv(rcv);
 rxq = skb_get_queue_mapping(skb);
 if (rxq < rcv->real_num_rx_queues) {
  rq = &rcv_priv->rq[rxq];
  rcv_xdp = rcu_access_pointer(rq->xdp_prog);
  if (rcv_xdp)
   skb_record_rx_queue(skb, rxq);
 }

 skb_tx_timestamp(skb);
 if (likely(veth_forward_skb(rcv, skb, rq, rcv_xdp) == NET_RX_SUCCESS)) {
  if (!rcv_xdp) {
   struct pcpu_lstats *stats = this_cpu_ptr(dev->lstats);

   u64_stats_update_begin(&stats->syncp);
   stats->bytes += length;
   stats->packets++;
   u64_stats_update_end(&stats->syncp);
  }
 } else {
drop:
  atomic64_inc(&priv->dropped);
 }

 if (rcv_xdp)
  __veth_xdp_flush(rq);

 rcu_read_unlock();

 return NETDEV_TX_OK;
}
