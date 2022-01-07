
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_nexthop_group {TYPE_1__* neigh_tbl; } ;
struct TYPE_2__ {int family; } ;



__attribute__((used)) static int
mlxsw_sp_nexthop_group_type(const struct mlxsw_sp_nexthop_group *nh_grp)
{
 return nh_grp->neigh_tbl->family;
}
