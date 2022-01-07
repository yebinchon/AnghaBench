
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_core {int res; } ;
typedef enum mlxsw_res_id { ____Placeholder_mlxsw_res_id } mlxsw_res_id ;


 int mlxsw_res_valid (int *,int) ;

bool mlxsw_core_res_valid(struct mlxsw_core *mlxsw_core,
     enum mlxsw_res_id res_id)
{
 return mlxsw_res_valid(&mlxsw_core->res, res_id);
}
