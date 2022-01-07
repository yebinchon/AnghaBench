
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp {int * ptp_ops; int * port_type_speed_ops; int * sb_vals; int rif_ops_arr; int mac_mask; int nve_ops_arr; int * acl_tcam_ops; int * mr_tcam_ops; int * afk_ops; int * afa_ops; int * kvdl_ops; } ;
struct mlxsw_core {int dummy; } ;
struct mlxsw_bus_info {int dummy; } ;


 struct mlxsw_sp* mlxsw_core_driver_priv (struct mlxsw_core*) ;
 int mlxsw_sp2_acl_tcam_ops ;
 int mlxsw_sp2_act_afa_ops ;
 int mlxsw_sp2_afk_ops ;
 int mlxsw_sp2_kvdl_ops ;
 int mlxsw_sp2_mac_mask ;
 int mlxsw_sp2_mr_tcam_ops ;
 int mlxsw_sp2_nve_ops_arr ;
 int mlxsw_sp2_port_type_speed_ops ;
 int mlxsw_sp2_ptp_ops ;
 int mlxsw_sp2_rif_ops_arr ;
 int mlxsw_sp2_sb_vals ;
 int mlxsw_sp_init (struct mlxsw_core*,struct mlxsw_bus_info const*) ;

__attribute__((used)) static int mlxsw_sp2_init(struct mlxsw_core *mlxsw_core,
     const struct mlxsw_bus_info *mlxsw_bus_info)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_core_driver_priv(mlxsw_core);

 mlxsw_sp->kvdl_ops = &mlxsw_sp2_kvdl_ops;
 mlxsw_sp->afa_ops = &mlxsw_sp2_act_afa_ops;
 mlxsw_sp->afk_ops = &mlxsw_sp2_afk_ops;
 mlxsw_sp->mr_tcam_ops = &mlxsw_sp2_mr_tcam_ops;
 mlxsw_sp->acl_tcam_ops = &mlxsw_sp2_acl_tcam_ops;
 mlxsw_sp->nve_ops_arr = mlxsw_sp2_nve_ops_arr;
 mlxsw_sp->mac_mask = mlxsw_sp2_mac_mask;
 mlxsw_sp->rif_ops_arr = mlxsw_sp2_rif_ops_arr;
 mlxsw_sp->sb_vals = &mlxsw_sp2_sb_vals;
 mlxsw_sp->port_type_speed_ops = &mlxsw_sp2_port_type_speed_ops;
 mlxsw_sp->ptp_ops = &mlxsw_sp2_ptp_ops;

 return mlxsw_sp_init(mlxsw_core, mlxsw_bus_info);
}
