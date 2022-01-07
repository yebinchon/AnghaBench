
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rocker_world_ops {int (* port_neigh_destroy ) (struct rocker_port*,struct neighbour*) ;} ;
struct rocker_port {TYPE_1__* rocker; } ;
struct neighbour {int dummy; } ;
struct TYPE_2__ {struct rocker_world_ops* wops; } ;


 int EOPNOTSUPP ;
 int stub1 (struct rocker_port*,struct neighbour*) ;

__attribute__((used)) static int rocker_world_port_neigh_destroy(struct rocker_port *rocker_port,
        struct neighbour *n)
{
 struct rocker_world_ops *wops = rocker_port->rocker->wops;

 if (!wops->port_neigh_destroy)
  return -EOPNOTSUPP;
 return wops->port_neigh_destroy(rocker_port, n);
}
