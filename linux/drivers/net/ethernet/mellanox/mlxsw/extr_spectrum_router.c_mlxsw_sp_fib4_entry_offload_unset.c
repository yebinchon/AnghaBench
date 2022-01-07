
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlxsw_sp_nexthop_group {int count; struct mlxsw_sp_nexthop* nexthops; int fib_list; } ;
struct TYPE_3__ {TYPE_2__* fib_nh; } ;
struct mlxsw_sp_nexthop {TYPE_1__ key; } ;
struct mlxsw_sp_fib_entry {struct mlxsw_sp_nexthop_group* nh_group; } ;
struct TYPE_4__ {int fib_nh_flags; } ;


 int RTNH_F_OFFLOAD ;
 int list_is_singular (int *) ;

__attribute__((used)) static void
mlxsw_sp_fib4_entry_offload_unset(struct mlxsw_sp_fib_entry *fib_entry)
{
 struct mlxsw_sp_nexthop_group *nh_grp = fib_entry->nh_group;
 int i;

 if (!list_is_singular(&nh_grp->fib_list))
  return;

 for (i = 0; i < nh_grp->count; i++) {
  struct mlxsw_sp_nexthop *nh = &nh_grp->nexthops[i];

  nh->key.fib_nh->fib_nh_flags &= ~RTNH_F_OFFLOAD;
 }
}
