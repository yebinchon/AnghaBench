
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int data; } ;
struct net_device {int dummy; } ;
typedef int gfp_t ;


 unsigned long ALIGNED_RX_SKB_ADDR (int ) ;
 struct sk_buff* alloc_skb (int,int ) ;
 scalar_t__ likely (struct sk_buff*) ;
 int skb_reserve (struct sk_buff*,unsigned long) ;

__attribute__((used)) static __inline__ struct sk_buff *gem_alloc_skb(struct net_device *dev, int size,
      gfp_t gfp_flags)
{
 struct sk_buff *skb = alloc_skb(size + 64, gfp_flags);

 if (likely(skb)) {
  unsigned long offset = ALIGNED_RX_SKB_ADDR(skb->data);
  skb_reserve(skb, offset);
 }
 return skb;
}
