
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_nexthop {TYPE_1__* neigh_entry; int offloaded; } ;
struct TYPE_2__ {unsigned char* ha; } ;



unsigned char *mlxsw_sp_nexthop_ha(struct mlxsw_sp_nexthop *nh)
{
 if (!nh->offloaded)
  return ((void*)0);
 return nh->neigh_entry->ha;
}
