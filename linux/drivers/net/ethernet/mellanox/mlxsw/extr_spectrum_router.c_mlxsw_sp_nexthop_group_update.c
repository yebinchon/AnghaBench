
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlxsw_sp_nexthop_group {int count; struct mlxsw_sp_nexthop* nexthops; int adj_index; } ;
struct mlxsw_sp_nexthop {int offloaded; int type; scalar_t__ num_adj_entries; scalar_t__ update; int should_offload; } ;
struct mlxsw_sp {int dummy; } ;




 int mlxsw_sp_nexthop_ipip_update (struct mlxsw_sp*,int ,struct mlxsw_sp_nexthop*) ;
 int mlxsw_sp_nexthop_update (struct mlxsw_sp*,int ,struct mlxsw_sp_nexthop*) ;

__attribute__((used)) static int
mlxsw_sp_nexthop_group_update(struct mlxsw_sp *mlxsw_sp,
         struct mlxsw_sp_nexthop_group *nh_grp,
         bool reallocate)
{
 u32 adj_index = nh_grp->adj_index;
 struct mlxsw_sp_nexthop *nh;
 int i;
 int err;

 for (i = 0; i < nh_grp->count; i++) {
  nh = &nh_grp->nexthops[i];

  if (!nh->should_offload) {
   nh->offloaded = 0;
   continue;
  }

  if (nh->update || reallocate) {
   switch (nh->type) {
   case 129:
    err = mlxsw_sp_nexthop_update
         (mlxsw_sp, adj_index, nh);
    break;
   case 128:
    err = mlxsw_sp_nexthop_ipip_update
         (mlxsw_sp, adj_index, nh);
    break;
   }
   if (err)
    return err;
   nh->update = 0;
   nh->offloaded = 1;
  }
  adj_index += nh->num_adj_entries;
 }
 return 0;
}
