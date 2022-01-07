
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct mlxsw_sp_nexthop_group {int count; int adj_index_valid; int adj_index; scalar_t__ ecmp_size; struct mlxsw_sp_nexthop* nexthops; scalar_t__ sum_norm_weight; int gateway; } ;
struct mlxsw_sp_nexthop {scalar_t__ should_offload; scalar_t__ offloaded; int update; } ;
struct mlxsw_sp {TYPE_1__* bus_info; } ;
struct TYPE_2__ {int dev; } ;


 int MLXSW_SP_KVDL_ENTRY_TYPE_ADJ ;
 int dev_warn (int ,char*) ;
 int mlxsw_sp_adj_index_mass_update (struct mlxsw_sp*,struct mlxsw_sp_nexthop_group*,int ,scalar_t__) ;
 int mlxsw_sp_fix_adj_grp_size (struct mlxsw_sp*,scalar_t__*) ;
 int mlxsw_sp_kvdl_alloc (struct mlxsw_sp*,int ,scalar_t__,int *) ;
 int mlxsw_sp_kvdl_free (struct mlxsw_sp*,int ,scalar_t__,int ) ;
 int mlxsw_sp_nexthop_fib_entries_refresh (struct mlxsw_sp_nexthop_group*) ;
 int mlxsw_sp_nexthop_fib_entries_update (struct mlxsw_sp*,struct mlxsw_sp_nexthop_group*) ;
 int mlxsw_sp_nexthop_group_normalize (struct mlxsw_sp_nexthop_group*) ;
 int mlxsw_sp_nexthop_group_rebalance (struct mlxsw_sp_nexthop_group*) ;
 int mlxsw_sp_nexthop_group_update (struct mlxsw_sp*,struct mlxsw_sp_nexthop_group*,int) ;

__attribute__((used)) static void
mlxsw_sp_nexthop_group_refresh(struct mlxsw_sp *mlxsw_sp,
          struct mlxsw_sp_nexthop_group *nh_grp)
{
 u16 ecmp_size, old_ecmp_size;
 struct mlxsw_sp_nexthop *nh;
 bool offload_change = 0;
 u32 adj_index;
 bool old_adj_index_valid;
 u32 old_adj_index;
 int i;
 int err;

 if (!nh_grp->gateway) {
  mlxsw_sp_nexthop_fib_entries_update(mlxsw_sp, nh_grp);
  return;
 }

 for (i = 0; i < nh_grp->count; i++) {
  nh = &nh_grp->nexthops[i];

  if (nh->should_offload != nh->offloaded) {
   offload_change = 1;
   if (nh->should_offload)
    nh->update = 1;
  }
 }
 if (!offload_change) {



  err = mlxsw_sp_nexthop_group_update(mlxsw_sp, nh_grp, 0);
  if (err) {
   dev_warn(mlxsw_sp->bus_info->dev, "Failed to update neigh MAC in adjacency table.\n");
   goto set_trap;
  }
  return;
 }
 mlxsw_sp_nexthop_group_normalize(nh_grp);
 if (!nh_grp->sum_norm_weight)



  goto set_trap;

 ecmp_size = nh_grp->sum_norm_weight;
 err = mlxsw_sp_fix_adj_grp_size(mlxsw_sp, &ecmp_size);
 if (err)

  goto set_trap;

 err = mlxsw_sp_kvdl_alloc(mlxsw_sp, MLXSW_SP_KVDL_ENTRY_TYPE_ADJ,
      ecmp_size, &adj_index);
 if (err) {



  dev_warn(mlxsw_sp->bus_info->dev, "Failed to allocate KVD linear area for nexthop group.\n");
  goto set_trap;
 }
 old_adj_index_valid = nh_grp->adj_index_valid;
 old_adj_index = nh_grp->adj_index;
 old_ecmp_size = nh_grp->ecmp_size;
 nh_grp->adj_index_valid = 1;
 nh_grp->adj_index = adj_index;
 nh_grp->ecmp_size = ecmp_size;
 mlxsw_sp_nexthop_group_rebalance(nh_grp);
 err = mlxsw_sp_nexthop_group_update(mlxsw_sp, nh_grp, 1);
 if (err) {
  dev_warn(mlxsw_sp->bus_info->dev, "Failed to update neigh MAC in adjacency table.\n");
  goto set_trap;
 }

 if (!old_adj_index_valid) {



  err = mlxsw_sp_nexthop_fib_entries_update(mlxsw_sp, nh_grp);
  if (err) {
   dev_warn(mlxsw_sp->bus_info->dev, "Failed to add adjacency index to fib entries.\n");
   goto set_trap;
  }
  return;
 }

 err = mlxsw_sp_adj_index_mass_update(mlxsw_sp, nh_grp,
          old_adj_index, old_ecmp_size);
 mlxsw_sp_kvdl_free(mlxsw_sp, MLXSW_SP_KVDL_ENTRY_TYPE_ADJ,
      old_ecmp_size, old_adj_index);
 if (err) {
  dev_warn(mlxsw_sp->bus_info->dev, "Failed to mass-update adjacency index for nexthop group.\n");
  goto set_trap;
 }


 mlxsw_sp_nexthop_fib_entries_refresh(nh_grp);

 return;

set_trap:
 old_adj_index_valid = nh_grp->adj_index_valid;
 nh_grp->adj_index_valid = 0;
 for (i = 0; i < nh_grp->count; i++) {
  nh = &nh_grp->nexthops[i];
  nh->offloaded = 0;
 }
 err = mlxsw_sp_nexthop_fib_entries_update(mlxsw_sp, nh_grp);
 if (err)
  dev_warn(mlxsw_sp->bus_info->dev, "Failed to set traps for fib entries.\n");
 if (old_adj_index_valid)
  mlxsw_sp_kvdl_free(mlxsw_sp, MLXSW_SP_KVDL_ENTRY_TYPE_ADJ,
       nh_grp->ecmp_size, nh_grp->adj_index);
}
