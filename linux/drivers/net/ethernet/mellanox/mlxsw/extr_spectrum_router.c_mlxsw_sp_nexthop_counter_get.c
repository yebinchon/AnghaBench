
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlxsw_sp_nexthop {int counter_index; int counter_valid; } ;
struct mlxsw_sp {int dummy; } ;


 int EINVAL ;
 int mlxsw_sp_flow_counter_get (struct mlxsw_sp*,int ,int *,int *) ;

int mlxsw_sp_nexthop_counter_get(struct mlxsw_sp *mlxsw_sp,
     struct mlxsw_sp_nexthop *nh, u64 *p_counter)
{
 if (!nh->counter_valid)
  return -EINVAL;

 return mlxsw_sp_flow_counter_get(mlxsw_sp, nh->counter_index,
      p_counter, ((void*)0));
}
