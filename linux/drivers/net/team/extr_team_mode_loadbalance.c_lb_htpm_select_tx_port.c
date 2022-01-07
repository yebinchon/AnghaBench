
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct team_port {int dummy; } ;
struct team {int dummy; } ;
struct sk_buff {int dummy; } ;
struct lb_priv {int dummy; } ;


 int LB_HTPM_PORT_BY_HASH (struct lb_priv*,unsigned char) ;
 struct team_port* lb_hash_select_tx_port (struct team*,struct lb_priv*,struct sk_buff*,unsigned char) ;
 scalar_t__ likely (struct team_port*) ;
 struct team_port* rcu_dereference_bh (int ) ;

__attribute__((used)) static struct team_port *lb_htpm_select_tx_port(struct team *team,
      struct lb_priv *lb_priv,
      struct sk_buff *skb,
      unsigned char hash)
{
 struct team_port *port;

 port = rcu_dereference_bh(LB_HTPM_PORT_BY_HASH(lb_priv, hash));
 if (likely(port))
  return port;

 return lb_hash_select_tx_port(team, lb_priv, skb, hash);
}
