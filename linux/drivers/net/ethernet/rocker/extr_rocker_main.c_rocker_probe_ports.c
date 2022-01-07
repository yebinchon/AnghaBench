
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_port {int dummy; } ;
struct rocker {int port_count; int ports; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kzalloc (size_t,int ) ;
 int rocker_probe_port (struct rocker*,int) ;
 int rocker_remove_ports (struct rocker*) ;

__attribute__((used)) static int rocker_probe_ports(struct rocker *rocker)
{
 int i;
 size_t alloc_size;
 int err;

 alloc_size = sizeof(struct rocker_port *) * rocker->port_count;
 rocker->ports = kzalloc(alloc_size, GFP_KERNEL);
 if (!rocker->ports)
  return -ENOMEM;
 for (i = 0; i < rocker->port_count; i++) {
  err = rocker_probe_port(rocker, i);
  if (err)
   goto remove_ports;
 }
 return 0;

remove_ports:
 rocker_remove_ports(rocker);
 return err;
}
