
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_neigh_entry {int dummy; } ;
struct mlxsw_sp {int core; } ;
struct devlink {int dummy; } ;




 char* MLXSW_SP_DPIPE_TABLE_NAME_HOST4 ;
 char* MLXSW_SP_DPIPE_TABLE_NAME_HOST6 ;
 int WARN_ON (int) ;
 int devlink_dpipe_table_counter_enabled (struct devlink*,char const*) ;
 int mlxsw_sp_neigh_entry_type (struct mlxsw_sp_neigh_entry*) ;
 struct devlink* priv_to_devlink (int ) ;

__attribute__((used)) static bool
mlxsw_sp_neigh_counter_should_alloc(struct mlxsw_sp *mlxsw_sp,
        struct mlxsw_sp_neigh_entry *neigh_entry)
{
 struct devlink *devlink;
 const char *table_name;

 switch (mlxsw_sp_neigh_entry_type(neigh_entry)) {
 case 129:
  table_name = MLXSW_SP_DPIPE_TABLE_NAME_HOST4;
  break;
 case 128:
  table_name = MLXSW_SP_DPIPE_TABLE_NAME_HOST6;
  break;
 default:
  WARN_ON(1);
  return 0;
 }

 devlink = priv_to_devlink(mlxsw_sp->core);
 return devlink_dpipe_table_counter_enabled(devlink, table_name);
}
