
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rocker_world_ops {int (* port_open ) (struct rocker_port*) ;} ;
struct rocker_port {TYPE_1__* rocker; } ;
struct TYPE_2__ {struct rocker_world_ops* wops; } ;


 int stub1 (struct rocker_port*) ;

__attribute__((used)) static int rocker_world_port_open(struct rocker_port *rocker_port)
{
 struct rocker_world_ops *wops = rocker_port->rocker->wops;

 if (!wops->port_open)
  return 0;
 return wops->port_open(rocker_port);
}
