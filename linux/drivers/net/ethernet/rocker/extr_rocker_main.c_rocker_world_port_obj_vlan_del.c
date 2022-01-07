
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int orig_dev; } ;
struct switchdev_obj_port_vlan {TYPE_2__ obj; } ;
struct rocker_world_ops {int (* port_obj_vlan_del ) (struct rocker_port*,struct switchdev_obj_port_vlan const*) ;} ;
struct rocker_port {TYPE_1__* rocker; } ;
struct TYPE_3__ {struct rocker_world_ops* wops; } ;


 int EOPNOTSUPP ;
 scalar_t__ netif_is_bridge_master (int ) ;
 int stub1 (struct rocker_port*,struct switchdev_obj_port_vlan const*) ;

__attribute__((used)) static int
rocker_world_port_obj_vlan_del(struct rocker_port *rocker_port,
          const struct switchdev_obj_port_vlan *vlan)
{
 struct rocker_world_ops *wops = rocker_port->rocker->wops;

 if (netif_is_bridge_master(vlan->obj.orig_dev))
  return -EOPNOTSUPP;

 if (!wops->port_obj_vlan_del)
  return -EOPNOTSUPP;
 return wops->port_obj_vlan_del(rocker_port, vlan);
}
