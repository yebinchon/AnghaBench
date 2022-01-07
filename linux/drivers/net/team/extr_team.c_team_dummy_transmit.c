
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct team {int dummy; } ;
struct sk_buff {int dummy; } ;


 int dev_kfree_skb_any (struct sk_buff*) ;

__attribute__((used)) static bool team_dummy_transmit(struct team *team, struct sk_buff *skb)
{
 dev_kfree_skb_any(skb);
 return 0;
}
