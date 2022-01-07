
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_rif {struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int dummy; } ;


 int MLXSW_SP_RIF_COUNTER_EGRESS ;
 int mlxsw_sp_rif_counter_free (struct mlxsw_sp*,struct mlxsw_sp_rif*,int ) ;

__attribute__((used)) static void mlxsw_sp_rif_counters_free(struct mlxsw_sp_rif *rif)
{
 struct mlxsw_sp *mlxsw_sp = rif->mlxsw_sp;

 mlxsw_sp_rif_counter_free(mlxsw_sp, rif, MLXSW_SP_RIF_COUNTER_EGRESS);
}
