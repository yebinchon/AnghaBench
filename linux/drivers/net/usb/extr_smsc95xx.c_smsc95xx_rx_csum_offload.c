
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {scalar_t__ len; int ip_summed; int csum; } ;


 int CHECKSUM_COMPLETE ;
 int skb_tail_pointer (struct sk_buff*) ;
 int skb_trim (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static void smsc95xx_rx_csum_offload(struct sk_buff *skb)
{
 skb->csum = *(u16 *)(skb_tail_pointer(skb) - 2);
 skb->ip_summed = CHECKSUM_COMPLETE;
 skb_trim(skb, skb->len - 2);
}
