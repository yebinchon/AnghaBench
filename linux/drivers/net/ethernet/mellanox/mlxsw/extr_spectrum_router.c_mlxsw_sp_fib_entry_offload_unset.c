
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlxsw_sp_fib_entry {TYPE_2__* fib_node; } ;
struct TYPE_4__ {TYPE_1__* fib; } ;
struct TYPE_3__ {int proto; } ;




 int mlxsw_sp_fib4_entry_offload_unset (struct mlxsw_sp_fib_entry*) ;
 int mlxsw_sp_fib6_entry_offload_unset (struct mlxsw_sp_fib_entry*) ;

__attribute__((used)) static void
mlxsw_sp_fib_entry_offload_unset(struct mlxsw_sp_fib_entry *fib_entry)
{
 switch (fib_entry->fib_node->fib->proto) {
 case 129:
  mlxsw_sp_fib4_entry_offload_unset(fib_entry);
  break;
 case 128:
  mlxsw_sp_fib6_entry_offload_unset(fib_entry);
  break;
 }
}
