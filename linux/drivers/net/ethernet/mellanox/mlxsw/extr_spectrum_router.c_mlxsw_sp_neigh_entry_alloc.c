
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct neighbour {int dummy; } ;
struct TYPE_2__ {struct neighbour* n; } ;
struct mlxsw_sp_neigh_entry {int nexthop_list; int rif; TYPE_1__ key; } ;
struct mlxsw_sp {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct mlxsw_sp_neigh_entry* kzalloc (int,int ) ;

__attribute__((used)) static struct mlxsw_sp_neigh_entry *
mlxsw_sp_neigh_entry_alloc(struct mlxsw_sp *mlxsw_sp, struct neighbour *n,
      u16 rif)
{
 struct mlxsw_sp_neigh_entry *neigh_entry;

 neigh_entry = kzalloc(sizeof(*neigh_entry), GFP_KERNEL);
 if (!neigh_entry)
  return ((void*)0);

 neigh_entry->key.n = n;
 neigh_entry->rif = rif;
 INIT_LIST_HEAD(&neigh_entry->nexthop_list);

 return neigh_entry;
}
