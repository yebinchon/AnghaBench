
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_tunnel_info {int sa_family; int port; } ;
struct list_head {int dummy; } ;
struct fm10k_udp_port {int list; int sa_family; int port; } ;


 int GFP_ATOMIC ;
 struct fm10k_udp_port* fm10k_remove_tunnel_port (struct list_head*,struct udp_tunnel_info*) ;
 struct fm10k_udp_port* kmalloc (int,int ) ;
 int list_add_tail (int *,struct list_head*) ;

__attribute__((used)) static void fm10k_insert_tunnel_port(struct list_head *ports,
         struct udp_tunnel_info *ti)
{
 struct fm10k_udp_port *port;




 port = fm10k_remove_tunnel_port(ports, ti);
 if (!port) {
  port = kmalloc(sizeof(*port), GFP_ATOMIC);
  if (!port)
   return;
  port->port = ti->port;
  port->sa_family = ti->sa_family;
 }

 list_add_tail(&port->list, ports);
}
