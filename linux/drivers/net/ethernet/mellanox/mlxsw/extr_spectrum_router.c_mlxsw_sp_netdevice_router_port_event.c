
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlxsw_sp_rif {int dummy; } ;
struct mlxsw_sp {int dummy; } ;





 struct mlxsw_sp* mlxsw_sp_lower_get (struct net_device*) ;
 struct mlxsw_sp_rif* mlxsw_sp_rif_find_by_dev (struct mlxsw_sp*,struct net_device*) ;
 int mlxsw_sp_router_port_change_event (struct mlxsw_sp*,struct mlxsw_sp_rif*) ;
 int mlxsw_sp_router_port_pre_changeaddr_event (struct mlxsw_sp_rif*,void*) ;

int mlxsw_sp_netdevice_router_port_event(struct net_device *dev,
      unsigned long event, void *ptr)
{
 struct mlxsw_sp *mlxsw_sp;
 struct mlxsw_sp_rif *rif;

 mlxsw_sp = mlxsw_sp_lower_get(dev);
 if (!mlxsw_sp)
  return 0;

 rif = mlxsw_sp_rif_find_by_dev(mlxsw_sp, dev);
 if (!rif)
  return 0;

 switch (event) {
 case 129:
 case 130:
  return mlxsw_sp_router_port_change_event(mlxsw_sp, rif);
 case 128:
  return mlxsw_sp_router_port_pre_changeaddr_event(rif, ptr);
 }

 return 0;
}
