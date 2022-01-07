
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct mlxsw_sp {int core; } ;


 int EBUSY ;
 int MAX_LAG_MEMBERS ;
 int MLXSW_CORE_RES_GET (int ,int ) ;
 int mlxsw_sp_port_lagged_get (struct mlxsw_sp*,int ,int) ;

__attribute__((used)) static int mlxsw_sp_port_lag_index_get(struct mlxsw_sp *mlxsw_sp,
           u16 lag_id, u8 *p_port_index)
{
 u64 max_lag_members;
 int i;

 max_lag_members = MLXSW_CORE_RES_GET(mlxsw_sp->core,
          MAX_LAG_MEMBERS);
 for (i = 0; i < max_lag_members; i++) {
  if (!mlxsw_sp_port_lagged_get(mlxsw_sp, lag_id, i)) {
   *p_port_index = i;
   return 0;
  }
 }
 return -EBUSY;
}
