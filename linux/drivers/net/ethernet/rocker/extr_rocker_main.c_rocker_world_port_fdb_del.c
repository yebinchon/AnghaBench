
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct switchdev_notifier_fdb_info {int addr; int vid; } ;
struct rocker_world_ops {int (* port_obj_fdb_del ) (struct rocker_port*,int ,int ) ;} ;
struct rocker_port {TYPE_1__* rocker; } ;
struct TYPE_2__ {struct rocker_world_ops* wops; } ;


 int EOPNOTSUPP ;
 int stub1 (struct rocker_port*,int ,int ) ;

__attribute__((used)) static int
rocker_world_port_fdb_del(struct rocker_port *rocker_port,
     struct switchdev_notifier_fdb_info *info)
{
 struct rocker_world_ops *wops = rocker_port->rocker->wops;

 if (!wops->port_obj_fdb_del)
  return -EOPNOTSUPP;
 return wops->port_obj_fdb_del(rocker_port, info->vid, info->addr);
}
