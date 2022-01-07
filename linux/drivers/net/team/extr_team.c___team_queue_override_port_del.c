
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct team_port {int qom_list; int queue_id; } ;
struct team {int dummy; } ;


 int list_del_rcu (int *) ;

__attribute__((used)) static void __team_queue_override_port_del(struct team *team,
        struct team_port *port)
{
 if (!port->queue_id)
  return;
 list_del_rcu(&port->qom_list);
}
