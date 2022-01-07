
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_res {int* valid; } ;
typedef enum mlxsw_res_id { ____Placeholder_mlxsw_res_id } mlxsw_res_id ;



__attribute__((used)) static inline bool mlxsw_res_valid(struct mlxsw_res *res,
       enum mlxsw_res_id res_id)
{
 return res->valid[res_id];
}
