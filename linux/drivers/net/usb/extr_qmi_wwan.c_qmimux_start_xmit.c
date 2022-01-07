
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {unsigned int len; int dev; } ;
struct qmimux_priv {int stats64; int real_dev; int mux_id; } ;
struct qmimux_hdr {int pkt_len; int mux_id; scalar_t__ pad; } ;
struct pcpu_sw_netstats {unsigned int tx_bytes; int syncp; int tx_packets; } ;
struct TYPE_2__ {int tx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
typedef scalar_t__ netdev_tx_t ;


 scalar_t__ NET_XMIT_CN ;
 scalar_t__ NET_XMIT_SUCCESS ;
 int cpu_to_be16 (unsigned int) ;
 scalar_t__ dev_queue_xmit (struct sk_buff*) ;
 scalar_t__ likely (int) ;
 struct qmimux_priv* netdev_priv (struct net_device*) ;
 struct qmimux_hdr* skb_push (struct sk_buff*,int) ;
 struct pcpu_sw_netstats* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static netdev_tx_t qmimux_start_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct qmimux_priv *priv = netdev_priv(dev);
 unsigned int len = skb->len;
 struct qmimux_hdr *hdr;
 netdev_tx_t ret;

 hdr = skb_push(skb, sizeof(struct qmimux_hdr));
 hdr->pad = 0;
 hdr->mux_id = priv->mux_id;
 hdr->pkt_len = cpu_to_be16(len);
 skb->dev = priv->real_dev;
 ret = dev_queue_xmit(skb);

 if (likely(ret == NET_XMIT_SUCCESS || ret == NET_XMIT_CN)) {
  struct pcpu_sw_netstats *stats64 = this_cpu_ptr(priv->stats64);

  u64_stats_update_begin(&stats64->syncp);
  stats64->tx_packets++;
  stats64->tx_bytes += len;
  u64_stats_update_end(&stats64->syncp);
 } else {
  dev->stats.tx_dropped++;
 }

 return ret;
}
