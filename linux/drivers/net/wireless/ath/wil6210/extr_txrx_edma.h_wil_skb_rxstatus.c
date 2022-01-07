
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ cb; } ;



__attribute__((used)) static inline void *wil_skb_rxstatus(struct sk_buff *skb)
{
 return (void *)skb->cb;
}
