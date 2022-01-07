
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int skb_alloc_fail; } ;
struct ena_ring {int netdev; int adapter; int syncp; TYPE_1__ rx_stats; int rx_copybreak; int napi; } ;


 struct sk_buff* napi_get_frags (int ) ;
 struct sk_buff* netdev_alloc_skb_ip_align (int ,int ) ;
 int netif_dbg (int ,int ,int ,char*,int) ;
 int rx_err ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *ena_alloc_skb(struct ena_ring *rx_ring, bool frags)
{
 struct sk_buff *skb;

 if (frags)
  skb = napi_get_frags(rx_ring->napi);
 else
  skb = netdev_alloc_skb_ip_align(rx_ring->netdev,
      rx_ring->rx_copybreak);

 if (unlikely(!skb)) {
  u64_stats_update_begin(&rx_ring->syncp);
  rx_ring->rx_stats.skb_alloc_fail++;
  u64_stats_update_end(&rx_ring->syncp);
  netif_dbg(rx_ring->adapter, rx_err, rx_ring->netdev,
     "Failed to allocate skb. frags: %d\n", frags);
  return ((void*)0);
 }

 return skb;
}
