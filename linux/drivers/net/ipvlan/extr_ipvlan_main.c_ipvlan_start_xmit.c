
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct net_device {int dummy; } ;
struct ipvl_pcpu_stats {int tx_bytes; int syncp; int tx_pkts; } ;
struct ipvl_dev {TYPE_1__* pcpu_stats; } ;
typedef int netdev_tx_t ;
struct TYPE_2__ {int tx_drps; } ;


 int NET_XMIT_CN ;
 int NET_XMIT_SUCCESS ;
 int ipvlan_queue_xmit (struct sk_buff*,struct net_device*) ;
 scalar_t__ likely (int) ;
 struct ipvl_dev* netdev_priv (struct net_device*) ;
 int this_cpu_inc (int ) ;
 struct ipvl_pcpu_stats* this_cpu_ptr (TYPE_1__*) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static netdev_tx_t ipvlan_start_xmit(struct sk_buff *skb,
         struct net_device *dev)
{
 const struct ipvl_dev *ipvlan = netdev_priv(dev);
 int skblen = skb->len;
 int ret;

 ret = ipvlan_queue_xmit(skb, dev);
 if (likely(ret == NET_XMIT_SUCCESS || ret == NET_XMIT_CN)) {
  struct ipvl_pcpu_stats *pcptr;

  pcptr = this_cpu_ptr(ipvlan->pcpu_stats);

  u64_stats_update_begin(&pcptr->syncp);
  pcptr->tx_pkts++;
  pcptr->tx_bytes += skblen;
  u64_stats_update_end(&pcptr->syncp);
 } else {
  this_cpu_inc(ipvlan->pcpu_stats->tx_drps);
 }
 return ret;
}
