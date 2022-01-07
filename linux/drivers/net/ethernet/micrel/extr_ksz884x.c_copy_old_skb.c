
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int csum; int ip_summed; int protocol; int dev; } ;


 int ETH_HLEN ;
 int dev_consume_skb_any (struct sk_buff*) ;
 int skb_set_network_header (struct sk_buff*,int ) ;

__attribute__((used)) static inline void copy_old_skb(struct sk_buff *old, struct sk_buff *skb)
{
 skb->dev = old->dev;
 skb->protocol = old->protocol;
 skb->ip_summed = old->ip_summed;
 skb->csum = old->csum;
 skb_set_network_header(skb, ETH_HLEN);

 dev_consume_skb_any(old);
}
