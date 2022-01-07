
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlxsw_res {int * values; int * valid; } ;
typedef enum mlxsw_res_id { ____Placeholder_mlxsw_res_id } mlxsw_res_id ;


 scalar_t__ WARN_ON (int) ;

__attribute__((used)) static inline u64 mlxsw_res_get(struct mlxsw_res *res,
    enum mlxsw_res_id res_id)
{
 if (WARN_ON(!res->valid[res_id]))
  return 0;
 return res->values[res_id];
}
