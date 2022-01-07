
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchdev_obj {int id; } ;
struct net_device {int dummy; } ;


 int EOPNOTSUPP ;


 int SWITCHDEV_OBJ_PORT_MDB (struct switchdev_obj const*) ;
 int SWITCHDEV_OBJ_PORT_VLAN (struct switchdev_obj const*) ;
 int ocelot_port_obj_del_mdb (struct net_device*,int ) ;
 int ocelot_port_vlan_del_vlan (struct net_device*,int ) ;

__attribute__((used)) static int ocelot_port_obj_del(struct net_device *dev,
          const struct switchdev_obj *obj)
{
 int ret = 0;

 switch (obj->id) {
 case 128:
  ret = ocelot_port_vlan_del_vlan(dev,
      SWITCHDEV_OBJ_PORT_VLAN(obj));
  break;
 case 129:
  ret = ocelot_port_obj_del_mdb(dev, SWITCHDEV_OBJ_PORT_MDB(obj));
  break;
 default:
  return -EOPNOTSUPP;
 }

 return ret;
}
