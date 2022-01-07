
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sk_buff_head {int dummy; } ;
struct sk_buff {scalar_t__ len; int protocol; } ;
struct netfront_stats {int syncp; int bytes; int packets; } ;
struct netfront_queue {int napi; TYPE_2__* info; } ;
struct TYPE_9__ {int pull_to; } ;
struct TYPE_6__ {int rx_errors; } ;
struct TYPE_8__ {TYPE_1__ stats; } ;
struct TYPE_7__ {TYPE_3__* netdev; int rx_stats; } ;


 TYPE_5__* NETFRONT_SKB_CB (struct sk_buff*) ;
 int __pskb_pull_tail (struct sk_buff*,int) ;
 struct sk_buff* __skb_dequeue (struct sk_buff_head*) ;
 scalar_t__ checksum_setup (TYPE_3__*,struct sk_buff*) ;
 int eth_type_trans (struct sk_buff*,TYPE_3__*) ;
 int kfree_skb (struct sk_buff*) ;
 int napi_gro_receive (int *,struct sk_buff*) ;
 int skb_headlen (struct sk_buff*) ;
 int skb_reset_network_header (struct sk_buff*) ;
 struct netfront_stats* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static int handle_incoming_queue(struct netfront_queue *queue,
     struct sk_buff_head *rxq)
{
 struct netfront_stats *rx_stats = this_cpu_ptr(queue->info->rx_stats);
 int packets_dropped = 0;
 struct sk_buff *skb;

 while ((skb = __skb_dequeue(rxq)) != ((void*)0)) {
  int pull_to = NETFRONT_SKB_CB(skb)->pull_to;

  if (pull_to > skb_headlen(skb))
   __pskb_pull_tail(skb, pull_to - skb_headlen(skb));


  skb->protocol = eth_type_trans(skb, queue->info->netdev);
  skb_reset_network_header(skb);

  if (checksum_setup(queue->info->netdev, skb)) {
   kfree_skb(skb);
   packets_dropped++;
   queue->info->netdev->stats.rx_errors++;
   continue;
  }

  u64_stats_update_begin(&rx_stats->syncp);
  rx_stats->packets++;
  rx_stats->bytes += skb->len;
  u64_stats_update_end(&rx_stats->syncp);


  napi_gro_receive(&queue->napi, skb);
 }

 return packets_dropped;
}
