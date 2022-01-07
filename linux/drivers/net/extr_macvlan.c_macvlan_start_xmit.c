
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vlan_pcpu_stats {unsigned int tx_bytes; int syncp; int tx_packets; } ;
struct sk_buff {unsigned int len; } ;
struct net_device {int dummy; } ;
struct macvlan_dev {TYPE_1__* pcpu_stats; } ;
typedef int netdev_tx_t ;
struct TYPE_2__ {int tx_dropped; } ;


 int NET_XMIT_CN ;
 int NET_XMIT_SUCCESS ;
 scalar_t__ likely (int) ;
 int macvlan_netpoll_send_skb (struct macvlan_dev*,struct sk_buff*) ;
 int macvlan_queue_xmit (struct sk_buff*,struct net_device*) ;
 struct macvlan_dev* netdev_priv (struct net_device*) ;
 int netpoll_tx_running (struct net_device*) ;
 int this_cpu_inc (int ) ;
 struct vlan_pcpu_stats* this_cpu_ptr (TYPE_1__*) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static netdev_tx_t macvlan_start_xmit(struct sk_buff *skb,
          struct net_device *dev)
{
 struct macvlan_dev *vlan = netdev_priv(dev);
 unsigned int len = skb->len;
 int ret;

 if (unlikely(netpoll_tx_running(dev)))
  return macvlan_netpoll_send_skb(vlan, skb);

 ret = macvlan_queue_xmit(skb, dev);

 if (likely(ret == NET_XMIT_SUCCESS || ret == NET_XMIT_CN)) {
  struct vlan_pcpu_stats *pcpu_stats;

  pcpu_stats = this_cpu_ptr(vlan->pcpu_stats);
  u64_stats_update_begin(&pcpu_stats->syncp);
  pcpu_stats->tx_packets++;
  pcpu_stats->tx_bytes += len;
  u64_stats_update_end(&pcpu_stats->syncp);
 } else {
  this_cpu_inc(vlan->pcpu_stats->tx_dropped);
 }
 return ret;
}
