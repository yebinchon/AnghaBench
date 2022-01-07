
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned long len; scalar_t__ data; } ;



__attribute__((used)) static inline int spans_boundary(struct sk_buff *skb)
{
 unsigned long a=(unsigned long)skb->data;
 a^=(a+skb->len);
 if(a&0x00010000)
  return 1;
 return 0;
}
