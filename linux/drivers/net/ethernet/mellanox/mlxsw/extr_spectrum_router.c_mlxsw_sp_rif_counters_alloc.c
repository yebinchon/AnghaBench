
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_rif {struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; } ;
struct devlink {int dummy; } ;


 int MLXSW_SP_DPIPE_TABLE_NAME_ERIF ;
 int MLXSW_SP_RIF_COUNTER_EGRESS ;
 int devlink_dpipe_table_counter_enabled (struct devlink*,int ) ;
 int mlxsw_sp_rif_counter_alloc (struct mlxsw_sp*,struct mlxsw_sp_rif*,int ) ;
 struct devlink* priv_to_devlink (int ) ;

__attribute__((used)) static void mlxsw_sp_rif_counters_alloc(struct mlxsw_sp_rif *rif)
{
 struct mlxsw_sp *mlxsw_sp = rif->mlxsw_sp;
 struct devlink *devlink;

 devlink = priv_to_devlink(mlxsw_sp->core);
 if (!devlink_dpipe_table_counter_enabled(devlink,
       MLXSW_SP_DPIPE_TABLE_NAME_ERIF))
  return;
 mlxsw_sp_rif_counter_alloc(mlxsw_sp, rif, MLXSW_SP_RIF_COUNTER_EGRESS);
}
