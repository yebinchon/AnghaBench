
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlxsw_sp {int core; } ;


 int MAX_RIFS ;
 int MLXSW_CORE_RES_GET (int ,int ) ;

__attribute__((used)) static u64 mlxsw_sp_dpipe_table_erif_size_get(void *priv)
{
 struct mlxsw_sp *mlxsw_sp = priv;

 return MLXSW_CORE_RES_GET(mlxsw_sp->core, MAX_RIFS);
}
