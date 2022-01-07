
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {unsigned int len; int queue_mapping; struct net_device* dev; } ;
struct netvsc_vf_pcpu_stats {unsigned int tx_bytes; int syncp; int tx_packets; } ;
struct net_device_context {TYPE_1__* vf_stats; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int slave_dev_queue_mapping; } ;
struct TYPE_3__ {int tx_dropped; } ;


 int NET_XMIT_CN ;
 int NET_XMIT_SUCCESS ;
 int dev_queue_xmit (struct sk_buff*) ;
 scalar_t__ likely (int) ;
 struct net_device_context* netdev_priv (struct net_device*) ;
 TYPE_2__* qdisc_skb_cb (struct sk_buff*) ;
 int this_cpu_inc (int ) ;
 struct netvsc_vf_pcpu_stats* this_cpu_ptr (TYPE_1__*) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static int netvsc_vf_xmit(struct net_device *net, struct net_device *vf_netdev,
     struct sk_buff *skb)
{
 struct net_device_context *ndev_ctx = netdev_priv(net);
 unsigned int len = skb->len;
 int rc;

 skb->dev = vf_netdev;
 skb->queue_mapping = qdisc_skb_cb(skb)->slave_dev_queue_mapping;

 rc = dev_queue_xmit(skb);
 if (likely(rc == NET_XMIT_SUCCESS || rc == NET_XMIT_CN)) {
  struct netvsc_vf_pcpu_stats *pcpu_stats
   = this_cpu_ptr(ndev_ctx->vf_stats);

  u64_stats_update_begin(&pcpu_stats->syncp);
  pcpu_stats->tx_packets++;
  pcpu_stats->tx_bytes += len;
  u64_stats_update_end(&pcpu_stats->syncp);
 } else {
  this_cpu_inc(ndev_ctx->vf_stats->tx_dropped);
 }

 return rc;
}
