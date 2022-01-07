
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct team_port {int index; int hlist; } ;
struct TYPE_2__ {int (* port_disabled ) (struct team*,struct team_port*) ;} ;
struct team {int en_port_count; TYPE_1__ ops; } ;


 int __reconstruct_port_hlist (struct team*,int) ;
 int hlist_del_rcu (int *) ;
 int stub1 (struct team*,struct team_port*) ;
 int team_adjust_ops (struct team*) ;
 int team_lower_state_changed (struct team_port*) ;
 int team_port_enabled (struct team_port*) ;
 int team_queue_override_port_del (struct team*,struct team_port*) ;

__attribute__((used)) static void team_port_disable(struct team *team,
         struct team_port *port)
{
 if (!team_port_enabled(port))
  return;
 if (team->ops.port_disabled)
  team->ops.port_disabled(team, port);
 hlist_del_rcu(&port->hlist);
 __reconstruct_port_hlist(team, port->index);
 port->index = -1;
 team->en_port_count--;
 team_queue_override_port_del(team, port);
 team_adjust_ops(team);
 team_lower_state_changed(port);
}
