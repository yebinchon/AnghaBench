
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct switchdev_trans {int dummy; } ;
struct rocker_world_ops {int port_attr_bridge_flags_set; } ;
struct rocker_port {TYPE_1__* rocker; } ;
struct TYPE_2__ {struct rocker_world_ops* wops; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int rocker_world_port_attr_bridge_flags_support_get (struct rocker_port*,unsigned long*) ;

__attribute__((used)) static int
rocker_world_port_attr_pre_bridge_flags_set(struct rocker_port *rocker_port,
         unsigned long brport_flags,
         struct switchdev_trans *trans)
{
 struct rocker_world_ops *wops = rocker_port->rocker->wops;
 unsigned long brport_flags_s;
 int err;

 if (!wops->port_attr_bridge_flags_set)
  return -EOPNOTSUPP;

 err = rocker_world_port_attr_bridge_flags_support_get(rocker_port,
             &brport_flags_s);
 if (err)
  return err;

 if (brport_flags & ~brport_flags_s)
  return -EINVAL;

 return 0;
}
