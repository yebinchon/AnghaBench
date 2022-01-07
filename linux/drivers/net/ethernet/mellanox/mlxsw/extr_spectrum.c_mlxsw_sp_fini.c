
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp {scalar_t__ clock; TYPE_1__* ptp_ops; int ptp_state; int netdevice_nb; } ;
struct mlxsw_core {int dummy; } ;
struct TYPE_2__ {int (* clock_fini ) (scalar_t__) ;int (* fini ) (int ) ;} ;


 struct mlxsw_sp* mlxsw_core_driver_priv (struct mlxsw_core*) ;
 int mlxsw_sp_acl_fini (struct mlxsw_sp*) ;
 int mlxsw_sp_afa_fini (struct mlxsw_sp*) ;
 int mlxsw_sp_buffers_fini (struct mlxsw_sp*) ;
 int mlxsw_sp_counter_pool_fini (struct mlxsw_sp*) ;
 int mlxsw_sp_devlink_traps_fini (struct mlxsw_sp*) ;
 int mlxsw_sp_dpipe_fini (struct mlxsw_sp*) ;
 int mlxsw_sp_fids_fini (struct mlxsw_sp*) ;
 int mlxsw_sp_kvdl_fini (struct mlxsw_sp*) ;
 int mlxsw_sp_lag_fini (struct mlxsw_sp*) ;
 int mlxsw_sp_nve_fini (struct mlxsw_sp*) ;
 int mlxsw_sp_ports_remove (struct mlxsw_sp*) ;
 int mlxsw_sp_router_fini (struct mlxsw_sp*) ;
 int mlxsw_sp_span_fini (struct mlxsw_sp*) ;
 int mlxsw_sp_switchdev_fini (struct mlxsw_sp*) ;
 int mlxsw_sp_traps_fini (struct mlxsw_sp*) ;
 int stub1 (int ) ;
 int stub2 (scalar_t__) ;
 int unregister_netdevice_notifier (int *) ;

__attribute__((used)) static void mlxsw_sp_fini(struct mlxsw_core *mlxsw_core)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_core_driver_priv(mlxsw_core);

 mlxsw_sp_ports_remove(mlxsw_sp);
 mlxsw_sp_dpipe_fini(mlxsw_sp);
 unregister_netdevice_notifier(&mlxsw_sp->netdevice_nb);
 if (mlxsw_sp->clock) {
  mlxsw_sp->ptp_ops->fini(mlxsw_sp->ptp_state);
  mlxsw_sp->ptp_ops->clock_fini(mlxsw_sp->clock);
 }
 mlxsw_sp_router_fini(mlxsw_sp);
 mlxsw_sp_acl_fini(mlxsw_sp);
 mlxsw_sp_nve_fini(mlxsw_sp);
 mlxsw_sp_afa_fini(mlxsw_sp);
 mlxsw_sp_counter_pool_fini(mlxsw_sp);
 mlxsw_sp_switchdev_fini(mlxsw_sp);
 mlxsw_sp_span_fini(mlxsw_sp);
 mlxsw_sp_lag_fini(mlxsw_sp);
 mlxsw_sp_buffers_fini(mlxsw_sp);
 mlxsw_sp_devlink_traps_fini(mlxsw_sp);
 mlxsw_sp_traps_fini(mlxsw_sp);
 mlxsw_sp_fids_fini(mlxsw_sp);
 mlxsw_sp_kvdl_fini(mlxsw_sp);
}
