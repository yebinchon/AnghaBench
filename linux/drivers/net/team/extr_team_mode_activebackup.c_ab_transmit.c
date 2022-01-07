
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct team_port {int dummy; } ;
struct team {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int active_port; } ;


 TYPE_1__* ab_priv (struct team*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 struct team_port* rcu_dereference_bh (int ) ;
 scalar_t__ team_dev_queue_xmit (struct team*,struct team_port*,struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool ab_transmit(struct team *team, struct sk_buff *skb)
{
 struct team_port *active_port;

 active_port = rcu_dereference_bh(ab_priv(team)->active_port);
 if (unlikely(!active_port))
  goto drop;
 if (team_dev_queue_xmit(team, active_port, skb))
  return 0;
 return 1;

drop:
 dev_kfree_skb_any(skb);
 return 0;
}
