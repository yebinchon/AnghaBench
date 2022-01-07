
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct team_port {int dummy; } ;
struct team {int dummy; } ;


 int __team_queue_override_enabled_check (struct team*) ;
 int __team_queue_override_port_add (struct team*,struct team_port*) ;

__attribute__((used)) static void team_queue_override_port_add(struct team *team,
      struct team_port *port)
{
 __team_queue_override_port_add(team, port);
 __team_queue_override_enabled_check(team);
}
