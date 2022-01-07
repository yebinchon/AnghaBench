
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct team_port {scalar_t__ index; int hlist; } ;
struct TYPE_2__ {int (* port_enabled ) (struct team*,struct team_port*) ;} ;
struct team {TYPE_1__ ops; int en_port_count; } ;


 int hlist_add_head_rcu (int *,int ) ;
 int stub1 (struct team*,struct team_port*) ;
 int team_adjust_ops (struct team*) ;
 int team_lower_state_changed (struct team_port*) ;
 int team_mcast_rejoin (struct team*) ;
 int team_notify_peers (struct team*) ;
 scalar_t__ team_port_enabled (struct team_port*) ;
 int team_port_index_hash (struct team*,scalar_t__) ;
 int team_queue_override_port_add (struct team*,struct team_port*) ;

__attribute__((used)) static void team_port_enable(struct team *team,
        struct team_port *port)
{
 if (team_port_enabled(port))
  return;
 port->index = team->en_port_count++;
 hlist_add_head_rcu(&port->hlist,
      team_port_index_hash(team, port->index));
 team_adjust_ops(team);
 team_queue_override_port_add(team, port);
 if (team->ops.port_enabled)
  team->ops.port_enabled(team, port);
 team_notify_peers(team);
 team_mcast_rejoin(team);
 team_lower_state_changed(port);
}
