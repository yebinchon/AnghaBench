
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp {int dummy; } ;


 int MLXSW_SP_COUNTER_SUB_POOL_FLOW ;
 int mlxsw_sp_counter_free (struct mlxsw_sp*,int ,unsigned int) ;

void mlxsw_sp_flow_counter_free(struct mlxsw_sp *mlxsw_sp,
    unsigned int counter_index)
{
  mlxsw_sp_counter_free(mlxsw_sp, MLXSW_SP_COUNTER_SUB_POOL_FLOW,
          counter_index);
}
