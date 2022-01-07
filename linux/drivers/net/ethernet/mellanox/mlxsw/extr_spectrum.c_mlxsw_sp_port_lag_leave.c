
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct mlxsw_sp_upper {int ref_count; } ;
struct mlxsw_sp_port {scalar_t__ lagged; int local_port; int default_vlan; int lag_id; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; } ;


 int MLXSW_SP_DEFAULT_VID ;
 int WARN_ON (int) ;
 int mlxsw_core_lag_mapping_clear (int ,int ,int ) ;
 int mlxsw_sp_lag_col_port_remove (struct mlxsw_sp_port*,int ) ;
 int mlxsw_sp_lag_destroy (struct mlxsw_sp*,int ) ;
 struct mlxsw_sp_upper* mlxsw_sp_lag_get (struct mlxsw_sp*,int ) ;
 int mlxsw_sp_port_lag_uppers_cleanup (struct mlxsw_sp_port*,struct net_device*) ;
 int mlxsw_sp_port_pvid_set (struct mlxsw_sp_port*,int ) ;
 int mlxsw_sp_port_vlan_cleanup (int ) ;
 int mlxsw_sp_port_vlan_flush (struct mlxsw_sp_port*,int) ;

__attribute__((used)) static void mlxsw_sp_port_lag_leave(struct mlxsw_sp_port *mlxsw_sp_port,
        struct net_device *lag_dev)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 u16 lag_id = mlxsw_sp_port->lag_id;
 struct mlxsw_sp_upper *lag;

 if (!mlxsw_sp_port->lagged)
  return;
 lag = mlxsw_sp_lag_get(mlxsw_sp, lag_id);
 WARN_ON(lag->ref_count == 0);

 mlxsw_sp_lag_col_port_remove(mlxsw_sp_port, lag_id);


 mlxsw_sp_port_vlan_flush(mlxsw_sp_port, 0);
 mlxsw_sp_port_vlan_cleanup(mlxsw_sp_port->default_vlan);



 mlxsw_sp_port_lag_uppers_cleanup(mlxsw_sp_port, lag_dev);

 if (lag->ref_count == 1)
  mlxsw_sp_lag_destroy(mlxsw_sp, lag_id);

 mlxsw_core_lag_mapping_clear(mlxsw_sp->core, lag_id,
         mlxsw_sp_port->local_port);
 mlxsw_sp_port->lagged = 0;
 lag->ref_count--;


 mlxsw_sp_port_pvid_set(mlxsw_sp_port, MLXSW_SP_DEFAULT_VID);
}
