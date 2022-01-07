
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct team_port {int dummy; } ;
struct team {int dummy; } ;
struct sk_buff {int dummy; } ;
typedef int rx_handler_result_t ;
struct TYPE_2__ {int active_port; } ;


 int RX_HANDLER_ANOTHER ;
 int RX_HANDLER_EXACT ;
 TYPE_1__* ab_priv (struct team*) ;
 struct team_port* rcu_dereference (int ) ;

__attribute__((used)) static rx_handler_result_t ab_receive(struct team *team, struct team_port *port,
          struct sk_buff *skb) {
 struct team_port *active_port;

 active_port = rcu_dereference(ab_priv(team)->active_port);
 if (active_port != port)
  return RX_HANDLER_EXACT;
 return RX_HANDLER_ANOTHER;
}
