
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct switchdev_trans {int dummy; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp_port {TYPE_2__* mlxsw_sp; } ;
struct mlxsw_sp_bridge_port {int flags; TYPE_1__* bridge_device; } ;
typedef int brport_flags ;
struct TYPE_4__ {int bridge; } ;
struct TYPE_3__ {scalar_t__ multicast_enabled; } ;


 unsigned long BR_FLOOD ;
 unsigned long BR_LEARNING ;
 unsigned long BR_MCAST_FLOOD ;
 int MLXSW_SP_FLOOD_TYPE_MC ;
 int MLXSW_SP_FLOOD_TYPE_UC ;
 int memcpy (int *,unsigned long*,int) ;
 struct mlxsw_sp_bridge_port* mlxsw_sp_bridge_port_find (int ,struct net_device*) ;
 int mlxsw_sp_bridge_port_flood_table_set (struct mlxsw_sp_port*,struct mlxsw_sp_bridge_port*,int ,unsigned long) ;
 int mlxsw_sp_bridge_port_learning_set (struct mlxsw_sp_port*,struct mlxsw_sp_bridge_port*,unsigned long) ;
 scalar_t__ switchdev_trans_ph_prepare (struct switchdev_trans*) ;

__attribute__((used)) static int mlxsw_sp_port_attr_br_flags_set(struct mlxsw_sp_port *mlxsw_sp_port,
        struct switchdev_trans *trans,
        struct net_device *orig_dev,
        unsigned long brport_flags)
{
 struct mlxsw_sp_bridge_port *bridge_port;
 int err;

 if (switchdev_trans_ph_prepare(trans))
  return 0;

 bridge_port = mlxsw_sp_bridge_port_find(mlxsw_sp_port->mlxsw_sp->bridge,
      orig_dev);
 if (!bridge_port)
  return 0;

 err = mlxsw_sp_bridge_port_flood_table_set(mlxsw_sp_port, bridge_port,
         MLXSW_SP_FLOOD_TYPE_UC,
         brport_flags & BR_FLOOD);
 if (err)
  return err;

 err = mlxsw_sp_bridge_port_learning_set(mlxsw_sp_port, bridge_port,
      brport_flags & BR_LEARNING);
 if (err)
  return err;

 if (bridge_port->bridge_device->multicast_enabled)
  goto out;

 err = mlxsw_sp_bridge_port_flood_table_set(mlxsw_sp_port, bridge_port,
         MLXSW_SP_FLOOD_TYPE_MC,
         brport_flags &
         BR_MCAST_FLOOD);
 if (err)
  return err;

out:
 memcpy(&bridge_port->flags, &brport_flags, sizeof(brport_flags));
 return 0;
}
