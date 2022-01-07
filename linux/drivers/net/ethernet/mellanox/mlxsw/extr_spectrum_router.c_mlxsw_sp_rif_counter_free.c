
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_rif {int rif_index; } ;
struct mlxsw_sp {int dummy; } ;
typedef enum mlxsw_sp_rif_counter_dir { ____Placeholder_mlxsw_sp_rif_counter_dir } mlxsw_sp_rif_counter_dir ;


 int MLXSW_SP_COUNTER_SUB_POOL_RIF ;
 scalar_t__ WARN_ON (int) ;
 int mlxsw_sp_counter_free (struct mlxsw_sp*,int ,unsigned int) ;
 int mlxsw_sp_rif_counter_edit (struct mlxsw_sp*,int ,unsigned int,int,int) ;
 int mlxsw_sp_rif_counter_valid_get (struct mlxsw_sp_rif*,int) ;
 int mlxsw_sp_rif_counter_valid_set (struct mlxsw_sp_rif*,int,int) ;
 unsigned int* mlxsw_sp_rif_p_counter_get (struct mlxsw_sp_rif*,int) ;

void mlxsw_sp_rif_counter_free(struct mlxsw_sp *mlxsw_sp,
          struct mlxsw_sp_rif *rif,
          enum mlxsw_sp_rif_counter_dir dir)
{
 unsigned int *p_counter_index;

 if (!mlxsw_sp_rif_counter_valid_get(rif, dir))
  return;

 p_counter_index = mlxsw_sp_rif_p_counter_get(rif, dir);
 if (WARN_ON(!p_counter_index))
  return;
 mlxsw_sp_rif_counter_edit(mlxsw_sp, rif->rif_index,
      *p_counter_index, 0, dir);
 mlxsw_sp_counter_free(mlxsw_sp, MLXSW_SP_COUNTER_SUB_POOL_RIF,
         *p_counter_index);
 mlxsw_sp_rif_counter_valid_set(rif, dir, 0);
}
