
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;


 unsigned long ALIGN (unsigned long,int) ;
 int skb_reserve (struct sk_buff*,unsigned long) ;

__attribute__((used)) static void my_skb_align(struct sk_buff *skb, int n)
{
 unsigned long x = (unsigned long)skb->data;
 unsigned long v;

 v = ALIGN(x, n);

 skb_reserve(skb, v - x);
}
