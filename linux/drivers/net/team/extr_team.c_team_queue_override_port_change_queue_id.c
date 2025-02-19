
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u16 ;
struct team_port {void* queue_id; } ;
struct team {int dummy; } ;


 int __team_queue_override_enabled_check (struct team*) ;
 int __team_queue_override_port_add (struct team*,struct team_port*) ;
 int __team_queue_override_port_del (struct team*,struct team_port*) ;
 scalar_t__ team_port_enabled (struct team_port*) ;

__attribute__((used)) static void team_queue_override_port_change_queue_id(struct team *team,
           struct team_port *port,
           u16 new_queue_id)
{
 if (team_port_enabled(port)) {
  __team_queue_override_port_del(team, port);
  port->queue_id = new_queue_id;
  __team_queue_override_port_add(team, port);
  __team_queue_override_enabled_check(team);
 } else {
  port->queue_id = new_queue_id;
 }
}
