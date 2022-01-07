
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchdev_trans {int dummy; } ;
struct switchdev_obj {int id; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;


 int EOPNOTSUPP ;


 int SWITCHDEV_OBJ_PORT_MDB (struct switchdev_obj const*) ;
 int SWITCHDEV_OBJ_PORT_VLAN (struct switchdev_obj const*) ;
 int ocelot_port_obj_add_mdb (struct net_device*,int ,struct switchdev_trans*) ;
 int ocelot_port_obj_add_vlan (struct net_device*,int ,struct switchdev_trans*) ;

__attribute__((used)) static int ocelot_port_obj_add(struct net_device *dev,
          const struct switchdev_obj *obj,
          struct switchdev_trans *trans,
          struct netlink_ext_ack *extack)
{
 int ret = 0;

 switch (obj->id) {
 case 128:
  ret = ocelot_port_obj_add_vlan(dev,
            SWITCHDEV_OBJ_PORT_VLAN(obj),
            trans);
  break;
 case 129:
  ret = ocelot_port_obj_add_mdb(dev, SWITCHDEV_OBJ_PORT_MDB(obj),
           trans);
  break;
 default:
  return -EOPNOTSUPP;
 }

 return ret;
}
