
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct team_port {int index; int hlist; } ;
struct team {int en_port_count; } ;


 int hlist_add_head_rcu (int *,int ) ;
 int hlist_del_rcu (int *) ;
 struct team_port* team_get_port_by_index (struct team*,int) ;
 int team_port_index_hash (struct team*,int ) ;

__attribute__((used)) static void __reconstruct_port_hlist(struct team *team, int rm_index)
{
 int i;
 struct team_port *port;

 for (i = rm_index + 1; i < team->en_port_count; i++) {
  port = team_get_port_by_index(team, i);
  hlist_del_rcu(&port->hlist);
  port->index--;
  hlist_add_head_rcu(&port->hlist,
       team_port_index_hash(team, port->index));
 }
}
