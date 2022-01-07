
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct netdevsim {int dummy; } ;



__attribute__((used)) static inline bool nsim_ipsec_tx(struct netdevsim *ns, struct sk_buff *skb)
{
 return 1;
}
