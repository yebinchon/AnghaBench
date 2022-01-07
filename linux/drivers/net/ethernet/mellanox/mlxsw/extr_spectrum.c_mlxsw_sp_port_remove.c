
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_4__ {int shaper_dw; } ;
struct TYPE_3__ {int update_dw; } ;
struct mlxsw_sp_port {int dev; int vlans_list; int pcpu_stats; int sample; TYPE_2__ ptp; TYPE_1__ periodic_hw_stats; } ;
struct mlxsw_sp {int core; struct mlxsw_sp_port** ports; } ;


 int MLXSW_PORT_SWID_DISABLED_PORT ;
 int WARN_ON_ONCE (int) ;
 int cancel_delayed_work_sync (int *) ;
 int free_netdev (int ) ;
 int free_percpu (int ) ;
 int kfree (int ) ;
 int list_empty (int *) ;
 int mlxsw_core_port_clear (int ,size_t,struct mlxsw_sp*) ;
 int mlxsw_core_port_fini (int ,size_t) ;
 int mlxsw_sp_port_dcb_fini (struct mlxsw_sp_port*) ;
 int mlxsw_sp_port_fids_fini (struct mlxsw_sp_port*) ;
 int mlxsw_sp_port_module_unmap (struct mlxsw_sp_port*) ;
 int mlxsw_sp_port_nve_fini (struct mlxsw_sp_port*) ;
 int mlxsw_sp_port_ptp_clear (struct mlxsw_sp_port*) ;
 int mlxsw_sp_port_swid_set (struct mlxsw_sp_port*,int ) ;
 int mlxsw_sp_port_tc_mc_mode_set (struct mlxsw_sp_port*,int) ;
 int mlxsw_sp_port_vlan_flush (struct mlxsw_sp_port*,int) ;
 int mlxsw_sp_tc_qdisc_fini (struct mlxsw_sp_port*) ;
 int unregister_netdev (int ) ;

__attribute__((used)) static void mlxsw_sp_port_remove(struct mlxsw_sp *mlxsw_sp, u8 local_port)
{
 struct mlxsw_sp_port *mlxsw_sp_port = mlxsw_sp->ports[local_port];

 cancel_delayed_work_sync(&mlxsw_sp_port->periodic_hw_stats.update_dw);
 cancel_delayed_work_sync(&mlxsw_sp_port->ptp.shaper_dw);
 mlxsw_sp_port_ptp_clear(mlxsw_sp_port);
 mlxsw_core_port_clear(mlxsw_sp->core, local_port, mlxsw_sp);
 unregister_netdev(mlxsw_sp_port->dev);
 mlxsw_sp->ports[local_port] = ((void*)0);
 mlxsw_sp_port_vlan_flush(mlxsw_sp_port, 1);
 mlxsw_sp_port_nve_fini(mlxsw_sp_port);
 mlxsw_sp_tc_qdisc_fini(mlxsw_sp_port);
 mlxsw_sp_port_fids_fini(mlxsw_sp_port);
 mlxsw_sp_port_dcb_fini(mlxsw_sp_port);
 mlxsw_sp_port_tc_mc_mode_set(mlxsw_sp_port, 0);
 mlxsw_sp_port_swid_set(mlxsw_sp_port, MLXSW_PORT_SWID_DISABLED_PORT);
 mlxsw_sp_port_module_unmap(mlxsw_sp_port);
 kfree(mlxsw_sp_port->sample);
 free_percpu(mlxsw_sp_port->pcpu_stats);
 WARN_ON_ONCE(!list_empty(&mlxsw_sp_port->vlans_list));
 free_netdev(mlxsw_sp_port->dev);
 mlxsw_core_port_fini(mlxsw_sp->core, local_port);
}
