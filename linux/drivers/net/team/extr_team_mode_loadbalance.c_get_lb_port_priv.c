
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct team_port {int mode_priv; } ;
struct lb_port_priv {int dummy; } ;



__attribute__((used)) static struct lb_port_priv *get_lb_port_priv(struct team_port *port)
{
 return (struct lb_port_priv *) &port->mode_priv;
}
