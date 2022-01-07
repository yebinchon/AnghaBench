
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; } ;
struct mlxsw_sp_fib4_entry {TYPE_1__ common; } ;
struct mlxsw_sp {int dummy; } ;


 scalar_t__ MLXSW_SP_FIB_ENTRY_TYPE_IPIP_DECAP ;
 int mlxsw_sp_fib4_node_list_remove (struct mlxsw_sp_fib4_entry*) ;
 int mlxsw_sp_fib_entry_decap_fini (struct mlxsw_sp*,TYPE_1__*) ;
 int mlxsw_sp_fib_node_entry_del (struct mlxsw_sp*,TYPE_1__*) ;

__attribute__((used)) static void
mlxsw_sp_fib4_node_entry_unlink(struct mlxsw_sp *mlxsw_sp,
    struct mlxsw_sp_fib4_entry *fib4_entry)
{
 mlxsw_sp_fib_node_entry_del(mlxsw_sp, &fib4_entry->common);
 mlxsw_sp_fib4_node_list_remove(fib4_entry);

 if (fib4_entry->common.type == MLXSW_SP_FIB_ENTRY_TYPE_IPIP_DECAP)
  mlxsw_sp_fib_entry_decap_fini(mlxsw_sp, &fib4_entry->common);
}
