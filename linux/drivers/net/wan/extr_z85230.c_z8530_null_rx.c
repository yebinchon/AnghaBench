
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z8530_channel {int dummy; } ;
struct sk_buff {int dummy; } ;


 int dev_kfree_skb_any (struct sk_buff*) ;

void z8530_null_rx(struct z8530_channel *c, struct sk_buff *skb)
{
 dev_kfree_skb_any(skb);
}
