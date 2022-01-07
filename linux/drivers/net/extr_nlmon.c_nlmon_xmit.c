
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct pcpu_lstats {int bytes; int syncp; int packets; } ;
struct net_device {int lstats; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_OK ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct pcpu_lstats* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static netdev_tx_t nlmon_xmit(struct sk_buff *skb, struct net_device *dev)
{
 int len = skb->len;
 struct pcpu_lstats *stats = this_cpu_ptr(dev->lstats);

 u64_stats_update_begin(&stats->syncp);
 stats->bytes += len;
 stats->packets++;
 u64_stats_update_end(&stats->syncp);

 dev_kfree_skb(skb);

 return NETDEV_TX_OK;
}
