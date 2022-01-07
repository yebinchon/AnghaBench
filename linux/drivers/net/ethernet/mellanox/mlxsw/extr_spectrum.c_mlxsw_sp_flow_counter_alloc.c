
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp {int dummy; } ;


 int MLXSW_SP_COUNTER_SUB_POOL_FLOW ;
 int mlxsw_sp_counter_alloc (struct mlxsw_sp*,int ,unsigned int*) ;
 int mlxsw_sp_counter_free (struct mlxsw_sp*,int ,unsigned int) ;
 int mlxsw_sp_flow_counter_clear (struct mlxsw_sp*,unsigned int) ;

int mlxsw_sp_flow_counter_alloc(struct mlxsw_sp *mlxsw_sp,
    unsigned int *p_counter_index)
{
 int err;

 err = mlxsw_sp_counter_alloc(mlxsw_sp, MLXSW_SP_COUNTER_SUB_POOL_FLOW,
         p_counter_index);
 if (err)
  return err;
 err = mlxsw_sp_flow_counter_clear(mlxsw_sp, *p_counter_index);
 if (err)
  goto err_counter_clear;
 return 0;

err_counter_clear:
 mlxsw_sp_counter_free(mlxsw_sp, MLXSW_SP_COUNTER_SUB_POOL_FLOW,
         *p_counter_index);
 return err;
}
