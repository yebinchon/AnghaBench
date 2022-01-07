
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {scalar_t__ ip_summed; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int nr_frags; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 scalar_t__ skb_is_gso (struct sk_buff const*) ;
 TYPE_1__* skb_shinfo (struct sk_buff const*) ;

__attribute__((used)) static unsigned tx_le_req(const struct sk_buff *skb)
{
 unsigned count;

 count = (skb_shinfo(skb)->nr_frags + 1)
  * (sizeof(dma_addr_t) / sizeof(u32));

 if (skb_is_gso(skb))
  ++count;
 else if (sizeof(dma_addr_t) == sizeof(u32))
  ++count;

 if (skb->ip_summed == CHECKSUM_PARTIAL)
  ++count;

 return count;
}
