
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_rif {int dummy; } ;
struct mlxsw_sp_neigh_entry {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
struct devlink_dpipe_entry {int counter_valid; int counter; } ;




 int WARN_ON (int) ;
 int mlxsw_sp_dpipe_table_host4_entry_fill (struct devlink_dpipe_entry*,struct mlxsw_sp_neigh_entry*,struct mlxsw_sp_rif*) ;
 int mlxsw_sp_dpipe_table_host6_entry_fill (struct devlink_dpipe_entry*,struct mlxsw_sp_neigh_entry*,struct mlxsw_sp_rif*) ;
 int mlxsw_sp_neigh_counter_get (struct mlxsw_sp*,struct mlxsw_sp_neigh_entry*,int *) ;

__attribute__((used)) static void
mlxsw_sp_dpipe_table_host_entry_fill(struct mlxsw_sp *mlxsw_sp,
         struct devlink_dpipe_entry *entry,
         struct mlxsw_sp_neigh_entry *neigh_entry,
         struct mlxsw_sp_rif *rif,
         int type)
{
 int err;

 switch (type) {
 case 129:
  mlxsw_sp_dpipe_table_host4_entry_fill(entry, neigh_entry, rif);
  break;
 case 128:
  mlxsw_sp_dpipe_table_host6_entry_fill(entry, neigh_entry, rif);
  break;
 default:
  WARN_ON(1);
  return;
 }

 err = mlxsw_sp_neigh_counter_get(mlxsw_sp, neigh_entry,
      &entry->counter);
 if (!err)
  entry->counter_valid = 1;
}
