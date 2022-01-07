
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rocker_world_ops {int (* port_attr_bridge_flags_support_get ) (struct rocker_port const*,unsigned long*) ;} ;
struct rocker_port {TYPE_1__* rocker; } ;
struct TYPE_2__ {struct rocker_world_ops* wops; } ;


 int EOPNOTSUPP ;
 int stub1 (struct rocker_port const*,unsigned long*) ;

__attribute__((used)) static int
rocker_world_port_attr_bridge_flags_support_get(const struct rocker_port *
      rocker_port,
      unsigned long *
      p_brport_flags_support)
{
 struct rocker_world_ops *wops = rocker_port->rocker->wops;

 if (!wops->port_attr_bridge_flags_support_get)
  return -EOPNOTSUPP;
 return wops->port_attr_bridge_flags_support_get(rocker_port,
       p_brport_flags_support);
}
