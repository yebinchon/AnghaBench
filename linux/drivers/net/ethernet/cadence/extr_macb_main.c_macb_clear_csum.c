
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ ip_summed; scalar_t__ csum_offset; } ;
typedef scalar_t__ __sum16 ;


 scalar_t__ CHECKSUM_PARTIAL ;
 scalar_t__ skb_checksum_start (struct sk_buff*) ;
 int skb_cow_head (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline int macb_clear_csum(struct sk_buff *skb)
{

 if (skb->ip_summed != CHECKSUM_PARTIAL)
  return 0;


 if (unlikely(skb_cow_head(skb, 0)))
  return -1;





 *(__sum16 *)(skb_checksum_start(skb) + skb->csum_offset) = 0;
 return 0;
}
