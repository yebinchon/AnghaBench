
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchdev_trans {int dummy; } ;
struct switchdev_obj_port_vlan {int dummy; } ;
struct switchdev_obj {int id; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp_port {int mlxsw_sp; } ;


 int EOPNOTSUPP ;


 int SWITCHDEV_OBJ_PORT_MDB (struct switchdev_obj const*) ;
 struct switchdev_obj_port_vlan* SWITCHDEV_OBJ_PORT_VLAN (struct switchdev_obj const*) ;
 int mlxsw_sp_port_mdb_add (struct mlxsw_sp_port*,int ,struct switchdev_trans*) ;
 int mlxsw_sp_port_vlans_add (struct mlxsw_sp_port*,struct switchdev_obj_port_vlan const*,struct switchdev_trans*,struct netlink_ext_ack*) ;
 int mlxsw_sp_span_respin_schedule (int ) ;
 struct mlxsw_sp_port* netdev_priv (struct net_device*) ;
 int switchdev_trans_ph_prepare (struct switchdev_trans*) ;

__attribute__((used)) static int mlxsw_sp_port_obj_add(struct net_device *dev,
     const struct switchdev_obj *obj,
     struct switchdev_trans *trans,
     struct netlink_ext_ack *extack)
{
 struct mlxsw_sp_port *mlxsw_sp_port = netdev_priv(dev);
 const struct switchdev_obj_port_vlan *vlan;
 int err = 0;

 switch (obj->id) {
 case 128:
  vlan = SWITCHDEV_OBJ_PORT_VLAN(obj);
  err = mlxsw_sp_port_vlans_add(mlxsw_sp_port, vlan, trans,
           extack);

  if (switchdev_trans_ph_prepare(trans)) {





   mlxsw_sp_span_respin_schedule(mlxsw_sp_port->mlxsw_sp);
  }
  break;
 case 129:
  err = mlxsw_sp_port_mdb_add(mlxsw_sp_port,
         SWITCHDEV_OBJ_PORT_MDB(obj),
         trans);
  break;
 default:
  err = -EOPNOTSUPP;
  break;
 }

 return err;
}
