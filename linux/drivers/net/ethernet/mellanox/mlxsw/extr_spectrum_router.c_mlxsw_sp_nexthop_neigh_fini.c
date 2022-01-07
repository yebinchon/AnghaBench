
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct neighbour {int dummy; } ;
struct mlxsw_sp_nexthop {struct mlxsw_sp_neigh_entry* neigh_entry; int neigh_list_node; } ;
struct TYPE_2__ {struct neighbour* n; } ;
struct mlxsw_sp_neigh_entry {int nexthop_list; int connected; int nexthop_neighs_list_node; TYPE_1__ key; } ;
struct mlxsw_sp {int dummy; } ;


 int __mlxsw_sp_nexthop_neigh_update (struct mlxsw_sp_nexthop*,int) ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 int mlxsw_sp_neigh_entry_destroy (struct mlxsw_sp*,struct mlxsw_sp_neigh_entry*) ;
 int neigh_release (struct neighbour*) ;

__attribute__((used)) static void mlxsw_sp_nexthop_neigh_fini(struct mlxsw_sp *mlxsw_sp,
     struct mlxsw_sp_nexthop *nh)
{
 struct mlxsw_sp_neigh_entry *neigh_entry = nh->neigh_entry;
 struct neighbour *n;

 if (!neigh_entry)
  return;
 n = neigh_entry->key.n;

 __mlxsw_sp_nexthop_neigh_update(nh, 1);
 list_del(&nh->neigh_list_node);
 nh->neigh_entry = ((void*)0);




 if (list_empty(&neigh_entry->nexthop_list))
  list_del(&neigh_entry->nexthop_neighs_list_node);

 if (!neigh_entry->connected && list_empty(&neigh_entry->nexthop_list))
  mlxsw_sp_neigh_entry_destroy(mlxsw_sp, neigh_entry);

 neigh_release(n);
}
