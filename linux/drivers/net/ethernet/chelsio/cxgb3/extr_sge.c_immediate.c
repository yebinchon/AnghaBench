
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; } ;


 scalar_t__ WR_LEN ;

__attribute__((used)) static inline int immediate(const struct sk_buff *skb)
{
 return skb->len <= WR_LEN;
}
