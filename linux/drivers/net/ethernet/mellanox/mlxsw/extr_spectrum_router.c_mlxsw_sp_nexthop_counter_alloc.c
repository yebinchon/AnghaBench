
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_nexthop {int counter_valid; int counter_index; } ;
struct mlxsw_sp {int core; } ;
struct devlink {int dummy; } ;


 int MLXSW_SP_DPIPE_TABLE_NAME_ADJ ;
 int devlink_dpipe_table_counter_enabled (struct devlink*,int ) ;
 scalar_t__ mlxsw_sp_flow_counter_alloc (struct mlxsw_sp*,int *) ;
 struct devlink* priv_to_devlink (int ) ;

void mlxsw_sp_nexthop_counter_alloc(struct mlxsw_sp *mlxsw_sp,
        struct mlxsw_sp_nexthop *nh)
{
 struct devlink *devlink;

 devlink = priv_to_devlink(mlxsw_sp->core);
 if (!devlink_dpipe_table_counter_enabled(devlink,
       MLXSW_SP_DPIPE_TABLE_NAME_ADJ))
  return;

 if (mlxsw_sp_flow_counter_alloc(mlxsw_sp, &nh->counter_index))
  return;

 nh->counter_valid = 1;
}
