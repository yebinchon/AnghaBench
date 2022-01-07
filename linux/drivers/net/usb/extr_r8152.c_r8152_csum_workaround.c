
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff_head {int dummy; } ;
struct sk_buff {scalar_t__ ip_summed; struct sk_buff* next; } ;
struct r8152 {TYPE_1__* netdev; } ;
struct net_device_stats {int tx_dropped; } ;
typedef int netdev_features_t ;
struct TYPE_4__ {scalar_t__ gso_size; } ;
struct TYPE_3__ {int features; struct net_device_stats stats; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int NETIF_F_IPV6_CSUM ;
 int NETIF_F_SG ;
 int NETIF_F_TSO6 ;
 int __skb_queue_head (struct sk_buff_head*,struct sk_buff*) ;
 int __skb_queue_head_init (struct sk_buff_head*) ;
 int __skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 scalar_t__ skb_checksum_help (struct sk_buff*) ;
 struct sk_buff* skb_gso_segment (struct sk_buff*,int) ;
 int skb_queue_splice (struct sk_buff_head*,struct sk_buff_head*) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void r8152_csum_workaround(struct r8152 *tp, struct sk_buff *skb,
      struct sk_buff_head *list)
{
 if (skb_shinfo(skb)->gso_size) {
  netdev_features_t features = tp->netdev->features;
  struct sk_buff_head seg_list;
  struct sk_buff *segs, *nskb;

  features &= ~(NETIF_F_SG | NETIF_F_IPV6_CSUM | NETIF_F_TSO6);
  segs = skb_gso_segment(skb, features);
  if (IS_ERR(segs) || !segs)
   goto drop;

  __skb_queue_head_init(&seg_list);

  do {
   nskb = segs;
   segs = segs->next;
   nskb->next = ((void*)0);
   __skb_queue_tail(&seg_list, nskb);
  } while (segs);

  skb_queue_splice(&seg_list, list);
  dev_kfree_skb(skb);
 } else if (skb->ip_summed == CHECKSUM_PARTIAL) {
  if (skb_checksum_help(skb) < 0)
   goto drop;

  __skb_queue_head(list, skb);
 } else {
  struct net_device_stats *stats;

drop:
  stats = &tp->netdev->stats;
  stats->tx_dropped++;
  dev_kfree_skb(skb);
 }
}
