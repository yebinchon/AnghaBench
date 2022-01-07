
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchdev_obj {int id; } ;
struct rocker_port {int dummy; } ;
struct net_device {int dummy; } ;


 int EOPNOTSUPP ;

 int SWITCHDEV_OBJ_PORT_VLAN (struct switchdev_obj const*) ;
 struct rocker_port* netdev_priv (struct net_device*) ;
 int rocker_world_port_obj_vlan_del (struct rocker_port*,int ) ;

__attribute__((used)) static int rocker_port_obj_del(struct net_device *dev,
          const struct switchdev_obj *obj)
{
 struct rocker_port *rocker_port = netdev_priv(dev);
 int err = 0;

 switch (obj->id) {
 case 128:
  err = rocker_world_port_obj_vlan_del(rocker_port,
           SWITCHDEV_OBJ_PORT_VLAN(obj));
  break;
 default:
  err = -EOPNOTSUPP;
  break;
 }

 return err;
}
