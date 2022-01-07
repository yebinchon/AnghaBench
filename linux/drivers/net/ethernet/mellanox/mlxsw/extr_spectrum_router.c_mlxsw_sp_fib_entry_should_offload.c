
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlxsw_sp_nexthop_group {int nh_rif; int adj_index_valid; } ;
struct mlxsw_sp_fib_entry {int type; TYPE_2__* fib_node; struct mlxsw_sp_nexthop_group* nh_group; } ;
struct TYPE_4__ {TYPE_1__* fib; } ;
struct TYPE_3__ {int proto; } ;
 int mlxsw_sp_fib4_entry_should_offload (struct mlxsw_sp_fib_entry const*) ;

__attribute__((used)) static bool
mlxsw_sp_fib_entry_should_offload(const struct mlxsw_sp_fib_entry *fib_entry)
{
 struct mlxsw_sp_nexthop_group *nh_group = fib_entry->nh_group;

 switch (fib_entry->fib_node->fib->proto) {
 case 129:
  if (!mlxsw_sp_fib4_entry_should_offload(fib_entry))
   return 0;
  break;
 case 128:
  break;
 }

 switch (fib_entry->type) {
 case 130:
  return !!nh_group->adj_index_valid;
 case 132:
  return !!nh_group->nh_rif;
 case 134:
 case 133:
 case 131:
  return 1;
 default:
  return 0;
 }
}
