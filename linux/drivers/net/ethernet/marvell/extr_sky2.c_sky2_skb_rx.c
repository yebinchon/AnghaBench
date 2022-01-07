
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sky2_port {TYPE_1__* hw; } ;
struct sk_buff {scalar_t__ ip_summed; } ;
struct TYPE_2__ {int napi; } ;


 scalar_t__ CHECKSUM_NONE ;
 int napi_gro_receive (int *,struct sk_buff*) ;
 int netif_receive_skb (struct sk_buff*) ;

__attribute__((used)) static inline void sky2_skb_rx(const struct sky2_port *sky2,
          struct sk_buff *skb)
{
 if (skb->ip_summed == CHECKSUM_NONE)
  netif_receive_skb(skb);
 else
  napi_gro_receive(&sky2->hw->napi, skb);
}
