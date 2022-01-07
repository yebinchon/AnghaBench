
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_rif {int dummy; } ;
struct mlxsw_sp {int core; } ;


 int MAX_RIFS ;
 int MLXSW_CORE_RES_GET (int ,int ) ;
 int MLXSW_SP_RIF_COUNTER_EGRESS ;
 struct mlxsw_sp_rif* mlxsw_sp_rif_by_index (struct mlxsw_sp*,int) ;
 int mlxsw_sp_rif_counter_alloc (struct mlxsw_sp*,struct mlxsw_sp_rif*,int ) ;
 int mlxsw_sp_rif_counter_free (struct mlxsw_sp*,struct mlxsw_sp_rif*,int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static int mlxsw_sp_dpipe_table_erif_counters_update(void *priv, bool enable)
{
 struct mlxsw_sp *mlxsw_sp = priv;
 int i;

 rtnl_lock();
 for (i = 0; i < MLXSW_CORE_RES_GET(mlxsw_sp->core, MAX_RIFS); i++) {
  struct mlxsw_sp_rif *rif = mlxsw_sp_rif_by_index(mlxsw_sp, i);

  if (!rif)
   continue;
  if (enable)
   mlxsw_sp_rif_counter_alloc(mlxsw_sp, rif,
         MLXSW_SP_RIF_COUNTER_EGRESS);
  else
   mlxsw_sp_rif_counter_free(mlxsw_sp, rif,
        MLXSW_SP_RIF_COUNTER_EGRESS);
 }
 rtnl_unlock();
 return 0;
}
