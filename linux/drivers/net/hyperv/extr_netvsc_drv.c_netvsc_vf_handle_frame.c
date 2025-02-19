
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; struct net_device* dev; } ;
struct netvsc_vf_pcpu_stats {int syncp; int rx_bytes; int rx_packets; } ;
struct net_device_context {int vf_stats; } ;
struct net_device {int rx_handler_data; } ;
typedef int rx_handler_result_t ;


 int GFP_ATOMIC ;
 int RX_HANDLER_ANOTHER ;
 int RX_HANDLER_CONSUMED ;
 struct net_device_context* netdev_priv (struct net_device*) ;
 struct net_device* rcu_dereference (int ) ;
 struct sk_buff* skb_share_check (struct sk_buff*,int ) ;
 struct netvsc_vf_pcpu_stats* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static rx_handler_result_t netvsc_vf_handle_frame(struct sk_buff **pskb)
{
 struct sk_buff *skb = *pskb;
 struct net_device *ndev = rcu_dereference(skb->dev->rx_handler_data);
 struct net_device_context *ndev_ctx = netdev_priv(ndev);
 struct netvsc_vf_pcpu_stats *pcpu_stats
   = this_cpu_ptr(ndev_ctx->vf_stats);

 skb = skb_share_check(skb, GFP_ATOMIC);
 if (unlikely(!skb))
  return RX_HANDLER_CONSUMED;

 *pskb = skb;

 skb->dev = ndev;

 u64_stats_update_begin(&pcpu_stats->syncp);
 pcpu_stats->rx_packets++;
 pcpu_stats->rx_bytes += skb->len;
 u64_stats_update_end(&pcpu_stats->syncp);

 return RX_HANDLER_ANOTHER;
}
