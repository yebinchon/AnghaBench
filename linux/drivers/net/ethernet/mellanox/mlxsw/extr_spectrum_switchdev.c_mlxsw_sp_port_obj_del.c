
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchdev_obj {int id; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp_port {int mlxsw_sp; } ;


 int EOPNOTSUPP ;


 int SWITCHDEV_OBJ_PORT_MDB (struct switchdev_obj const*) ;
 int SWITCHDEV_OBJ_PORT_VLAN (struct switchdev_obj const*) ;
 int mlxsw_sp_port_mdb_del (struct mlxsw_sp_port*,int ) ;
 int mlxsw_sp_port_vlans_del (struct mlxsw_sp_port*,int ) ;
 int mlxsw_sp_span_respin_schedule (int ) ;
 struct mlxsw_sp_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlxsw_sp_port_obj_del(struct net_device *dev,
     const struct switchdev_obj *obj)
{
 struct mlxsw_sp_port *mlxsw_sp_port = netdev_priv(dev);
 int err = 0;

 switch (obj->id) {
 case 128:
  err = mlxsw_sp_port_vlans_del(mlxsw_sp_port,
           SWITCHDEV_OBJ_PORT_VLAN(obj));
  break;
 case 129:
  err = mlxsw_sp_port_mdb_del(mlxsw_sp_port,
         SWITCHDEV_OBJ_PORT_MDB(obj));
  break;
 default:
  err = -EOPNOTSUPP;
  break;
 }

 mlxsw_sp_span_respin_schedule(mlxsw_sp_port->mlxsw_sp);

 return err;
}
