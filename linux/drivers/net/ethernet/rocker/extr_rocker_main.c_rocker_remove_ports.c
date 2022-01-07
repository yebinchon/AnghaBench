
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_port {int dev; } ;
struct rocker {int port_count; struct rocker_port** ports; } ;


 int free_netdev (int ) ;
 int kfree (struct rocker_port**) ;
 int rocker_world_fini (struct rocker*) ;
 int rocker_world_port_fini (struct rocker_port*) ;
 int rocker_world_port_post_fini (struct rocker_port*) ;
 int unregister_netdev (int ) ;

__attribute__((used)) static void rocker_remove_ports(struct rocker *rocker)
{
 struct rocker_port *rocker_port;
 int i;

 for (i = 0; i < rocker->port_count; i++) {
  rocker_port = rocker->ports[i];
  if (!rocker_port)
   continue;
  rocker_world_port_fini(rocker_port);
  unregister_netdev(rocker_port->dev);
  rocker_world_port_post_fini(rocker_port);
  free_netdev(rocker_port->dev);
 }
 rocker_world_fini(rocker);
 kfree(rocker->ports);
}
