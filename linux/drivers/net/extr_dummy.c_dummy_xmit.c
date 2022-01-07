
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; } ;
struct pcpu_dstats {int syncp; int tx_bytes; int tx_packets; } ;
struct net_device {int dstats; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_OK ;
 int dev_kfree_skb (struct sk_buff*) ;
 int skb_tx_timestamp (struct sk_buff*) ;
 struct pcpu_dstats* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static netdev_tx_t dummy_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct pcpu_dstats *dstats = this_cpu_ptr(dev->dstats);

 u64_stats_update_begin(&dstats->syncp);
 dstats->tx_packets++;
 dstats->tx_bytes += skb->len;
 u64_stats_update_end(&dstats->syncp);

 skb_tx_timestamp(skb);
 dev_kfree_skb(skb);
 return NETDEV_TX_OK;
}
