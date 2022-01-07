
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;


 int SH_ETH_RX_ALIGN ;
 int skb_reserve (struct sk_buff*,int) ;

__attribute__((used)) static void sh_eth_set_receive_align(struct sk_buff *skb)
{
 uintptr_t reserve = (uintptr_t)skb->data & (SH_ETH_RX_ALIGN - 1);

 if (reserve)
  skb_reserve(skb, SH_ETH_RX_ALIGN - reserve);
}
