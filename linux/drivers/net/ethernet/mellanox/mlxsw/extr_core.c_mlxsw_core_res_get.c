
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlxsw_core {int res; } ;
typedef enum mlxsw_res_id { ____Placeholder_mlxsw_res_id } mlxsw_res_id ;


 int mlxsw_res_get (int *,int) ;

u64 mlxsw_core_res_get(struct mlxsw_core *mlxsw_core,
         enum mlxsw_res_id res_id)
{
 return mlxsw_res_get(&mlxsw_core->res, res_id);
}
