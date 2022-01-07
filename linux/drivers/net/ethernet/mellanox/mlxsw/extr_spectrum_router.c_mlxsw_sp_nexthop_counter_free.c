
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_nexthop {int counter_valid; int counter_index; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_flow_counter_free (struct mlxsw_sp*,int ) ;

void mlxsw_sp_nexthop_counter_free(struct mlxsw_sp *mlxsw_sp,
       struct mlxsw_sp_nexthop *nh)
{
 if (!nh->counter_valid)
  return;
 mlxsw_sp_flow_counter_free(mlxsw_sp, nh->counter_index);
 nh->counter_valid = 0;
}
