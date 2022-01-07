
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_3__ {int rsc_flush; int rsc_count; } ;
struct ixgbe_ring {TYPE_1__ rx_stats; } ;
struct TYPE_4__ {scalar_t__ append_cnt; } ;


 TYPE_2__* IXGBE_CB (struct sk_buff*) ;
 int ixgbe_set_rsc_gso_size (struct ixgbe_ring*,struct sk_buff*) ;

__attribute__((used)) static void ixgbe_update_rsc_stats(struct ixgbe_ring *rx_ring,
       struct sk_buff *skb)
{

 if (!IXGBE_CB(skb)->append_cnt)
  return;

 rx_ring->rx_stats.rsc_count += IXGBE_CB(skb)->append_cnt;
 rx_ring->rx_stats.rsc_flush++;

 ixgbe_set_rsc_gso_size(rx_ring, skb);


 IXGBE_CB(skb)->append_cnt = 0;
}
