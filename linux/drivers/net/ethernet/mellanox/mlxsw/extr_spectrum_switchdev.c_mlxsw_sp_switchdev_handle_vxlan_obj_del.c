
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct switchdev_notifier_port_obj_info {TYPE_1__* obj; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int id; } ;



 int mlxsw_sp_switchdev_vxlan_vlans_del (struct net_device*,struct switchdev_notifier_port_obj_info*) ;

__attribute__((used)) static void
mlxsw_sp_switchdev_handle_vxlan_obj_del(struct net_device *vxlan_dev,
     struct switchdev_notifier_port_obj_info *
     port_obj_info)
{
 switch (port_obj_info->obj->id) {
 case 128:
  mlxsw_sp_switchdev_vxlan_vlans_del(vxlan_dev, port_obj_info);
  break;
 default:
  break;
 }
}
