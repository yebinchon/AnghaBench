
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ppp {int dev; int xmit_recursion; } ;


 int __ppp_xmit_process (struct ppp*,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 scalar_t__ net_ratelimit () ;
 int netdev_err (int ,char*) ;
 int * this_cpu_ptr (int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void ppp_xmit_process(struct ppp *ppp, struct sk_buff *skb)
{
 local_bh_disable();

 if (unlikely(*this_cpu_ptr(ppp->xmit_recursion)))
  goto err;

 (*this_cpu_ptr(ppp->xmit_recursion))++;
 __ppp_xmit_process(ppp, skb);
 (*this_cpu_ptr(ppp->xmit_recursion))--;

 local_bh_enable();

 return;

err:
 local_bh_enable();

 kfree_skb(skb);

 if (net_ratelimit())
  netdev_err(ppp->dev, "recursion detected\n");
}
