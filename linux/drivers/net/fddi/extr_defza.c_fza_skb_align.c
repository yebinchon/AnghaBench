
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;


 unsigned long ALIGN (unsigned long,unsigned int) ;
 int skb_reserve (struct sk_buff*,unsigned long) ;

__attribute__((used)) static inline void fza_skb_align(struct sk_buff *skb, unsigned int v)
{
 unsigned long x, y;

 x = (unsigned long)skb->data;
 y = ALIGN(x, v);

 skb_reserve(skb, y - x);
}
