
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int protocol; scalar_t__ tstamp; } ;
struct pcpu_lstats {int bytes; int syncp; int packets; } ;
struct net_device {int lstats; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_OK ;
 scalar_t__ NET_RX_SUCCESS ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 scalar_t__ likely (int) ;
 scalar_t__ netif_rx (struct sk_buff*) ;
 int skb_dst_force (struct sk_buff*) ;
 int skb_orphan (struct sk_buff*) ;
 int skb_tx_timestamp (struct sk_buff*) ;
 struct pcpu_lstats* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static netdev_tx_t loopback_xmit(struct sk_buff *skb,
     struct net_device *dev)
{
 struct pcpu_lstats *lb_stats;
 int len;

 skb_tx_timestamp(skb);


 skb->tstamp = 0;

 skb_orphan(skb);




 skb_dst_force(skb);

 skb->protocol = eth_type_trans(skb, dev);


 lb_stats = this_cpu_ptr(dev->lstats);

 len = skb->len;
 if (likely(netif_rx(skb) == NET_RX_SUCCESS)) {
  u64_stats_update_begin(&lb_stats->syncp);
  lb_stats->bytes += len;
  lb_stats->packets++;
  u64_stats_update_end(&lb_stats->syncp);
 }

 return NETDEV_TX_OK;
}
