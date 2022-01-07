
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int list; } ;
struct mlxsw_sp_fib4_entry {TYPE_1__ common; } ;


 int list_del (int *) ;

__attribute__((used)) static void
mlxsw_sp_fib4_node_list_remove(struct mlxsw_sp_fib4_entry *fib4_entry)
{
 list_del(&fib4_entry->common.list);
}
