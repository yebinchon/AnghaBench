
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlxsw_res {int* valid; int * values; } ;
typedef enum mlxsw_res_id { ____Placeholder_mlxsw_res_id } mlxsw_res_id ;



__attribute__((used)) static inline void mlxsw_res_set(struct mlxsw_res *res,
     enum mlxsw_res_id res_id, u64 value)
{
 res->valid[res_id] = 1;
 res->values[res_id] = value;
}
