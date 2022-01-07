
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int priority; } ;



__attribute__((used)) static inline int is_ctrl_pkt(const struct sk_buff *skb)
{
 return skb->priority & 1;
}
