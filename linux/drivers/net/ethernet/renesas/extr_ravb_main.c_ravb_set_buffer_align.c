
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct sk_buff {scalar_t__ data; } ;


 int RAVB_ALIGN ;
 int skb_reserve (struct sk_buff*,unsigned long) ;

__attribute__((used)) static void ravb_set_buffer_align(struct sk_buff *skb)
{
 u32 reserve = (unsigned long)skb->data & (RAVB_ALIGN - 1);

 if (reserve)
  skb_reserve(skb, RAVB_ALIGN - reserve);
}
