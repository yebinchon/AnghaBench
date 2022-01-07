
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct pcpu_dstats {int tx_bytes; int syncp; int tx_pkts; } ;
struct net_device {TYPE_1__* dstats; } ;
typedef scalar_t__ netdev_tx_t ;
struct TYPE_2__ {int tx_drps; } ;


 scalar_t__ NET_XMIT_CN ;
 scalar_t__ NET_XMIT_SUCCESS ;
 scalar_t__ is_ip_tx_frame (struct sk_buff*,struct net_device*) ;
 scalar_t__ likely (int) ;
 int this_cpu_inc (int ) ;
 struct pcpu_dstats* this_cpu_ptr (TYPE_1__*) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static netdev_tx_t vrf_xmit(struct sk_buff *skb, struct net_device *dev)
{
 int len = skb->len;
 netdev_tx_t ret = is_ip_tx_frame(skb, dev);

 if (likely(ret == NET_XMIT_SUCCESS || ret == NET_XMIT_CN)) {
  struct pcpu_dstats *dstats = this_cpu_ptr(dev->dstats);

  u64_stats_update_begin(&dstats->syncp);
  dstats->tx_pkts++;
  dstats->tx_bytes += len;
  u64_stats_update_end(&dstats->syncp);
 } else {
  this_cpu_inc(dev->dstats->tx_drps);
 }

 return ret;
}
