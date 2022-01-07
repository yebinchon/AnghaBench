
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct team_port {int dummy; } ;
struct team {int dummy; } ;
struct lb_port_priv {int pcpu_stats; } ;


 int free_percpu (int ) ;
 struct lb_port_priv* get_lb_port_priv (struct team_port*) ;

__attribute__((used)) static void lb_port_leave(struct team *team, struct team_port *port)
{
 struct lb_port_priv *lb_port_priv = get_lb_port_priv(port);

 free_percpu(lb_port_priv->pcpu_stats);
}
