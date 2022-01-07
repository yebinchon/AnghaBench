
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlxsw_sp_fib_node {int dummy; } ;
struct TYPE_3__ {struct mlxsw_sp_fib_node* fib_node; } ;
struct mlxsw_sp_fib4_entry {TYPE_1__ common; } ;
struct mlxsw_sp {int dummy; } ;
struct TYPE_4__ {int list; } ;


 TYPE_2__ common ;
 struct mlxsw_sp_fib4_entry* list_next_entry (struct mlxsw_sp_fib4_entry*,int ) ;
 int mlxsw_sp_fib4_entry_destroy (struct mlxsw_sp*,struct mlxsw_sp_fib4_entry*) ;
 int mlxsw_sp_fib4_node_entry_unlink (struct mlxsw_sp*,struct mlxsw_sp_fib4_entry*) ;
 int mlxsw_sp_fib_node_put (struct mlxsw_sp*,struct mlxsw_sp_fib_node*) ;

__attribute__((used)) static void mlxsw_sp_fib4_entry_replace(struct mlxsw_sp *mlxsw_sp,
     struct mlxsw_sp_fib4_entry *fib4_entry,
     bool replace)
{
 struct mlxsw_sp_fib_node *fib_node = fib4_entry->common.fib_node;
 struct mlxsw_sp_fib4_entry *replaced;

 if (!replace)
  return;


 replaced = list_next_entry(fib4_entry, common.list);

 mlxsw_sp_fib4_node_entry_unlink(mlxsw_sp, replaced);
 mlxsw_sp_fib4_entry_destroy(mlxsw_sp, replaced);
 mlxsw_sp_fib_node_put(mlxsw_sp, fib_node);
}
