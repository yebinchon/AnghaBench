
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int prefetch (void const*) ;

__attribute__((used)) static inline void prefetch_skb(const struct sk_buff *skb)
{
 const void *d = skb;

 prefetch(d);
 prefetch(d+64);
 prefetch(d+128);
 prefetch(d+192);
}
