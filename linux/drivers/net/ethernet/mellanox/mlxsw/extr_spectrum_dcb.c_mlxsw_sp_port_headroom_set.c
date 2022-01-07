
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int mtu; } ;
struct TYPE_2__ {int pfc; struct ieee_ets* ets; } ;
struct mlxsw_sp_port {TYPE_1__ dcb; struct net_device* dev; } ;
struct ieee_ets {int prio_tc; } ;


 int __mlxsw_sp_port_headroom_set (struct mlxsw_sp_port*,int ,int ,int,int ) ;
 int mlxsw_sp_port_is_pause_en (struct mlxsw_sp_port*) ;
 int mlxsw_sp_port_pg_destroy (struct mlxsw_sp_port*,int ,int ) ;
 int mlxsw_sp_port_pg_prio_map (struct mlxsw_sp_port*,int ) ;
 int netdev_err (struct net_device*,char*) ;
 int netdev_warn (struct net_device*,char*) ;

__attribute__((used)) static int mlxsw_sp_port_headroom_set(struct mlxsw_sp_port *mlxsw_sp_port,
          struct ieee_ets *ets)
{
 bool pause_en = mlxsw_sp_port_is_pause_en(mlxsw_sp_port);
 struct ieee_ets *my_ets = mlxsw_sp_port->dcb.ets;
 struct net_device *dev = mlxsw_sp_port->dev;
 int err;




 err = __mlxsw_sp_port_headroom_set(mlxsw_sp_port, dev->mtu,
        ets->prio_tc, pause_en,
        mlxsw_sp_port->dcb.pfc);
 if (err) {
  netdev_err(dev, "Failed to configure port's headroom\n");
  return err;
 }

 err = mlxsw_sp_port_pg_prio_map(mlxsw_sp_port, ets->prio_tc);
 if (err) {
  netdev_err(dev, "Failed to set PG-priority mapping\n");
  goto err_port_prio_pg_map;
 }

 err = mlxsw_sp_port_pg_destroy(mlxsw_sp_port, my_ets->prio_tc,
           ets->prio_tc);
 if (err)
  netdev_warn(dev, "Failed to remove ununsed PGs\n");

 return 0;

err_port_prio_pg_map:
 mlxsw_sp_port_pg_destroy(mlxsw_sp_port, ets->prio_tc, my_ets->prio_tc);
 return err;
}
