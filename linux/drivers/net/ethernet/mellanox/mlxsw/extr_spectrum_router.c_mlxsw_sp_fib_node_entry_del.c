
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_fib_node {int entry_list; } ;
struct mlxsw_sp_fib_entry {struct mlxsw_sp_fib_node* fib_node; } ;
struct mlxsw_sp {int dummy; } ;
typedef enum mlxsw_reg_ralue_op { ____Placeholder_mlxsw_reg_ralue_op } mlxsw_reg_ralue_op ;


 int MLXSW_REG_RALUE_OP_WRITE_DELETE ;
 int list ;
 int list_is_singular (int *) ;
 struct mlxsw_sp_fib_entry* list_next_entry (struct mlxsw_sp_fib_entry*,int ) ;
 int mlxsw_sp_fib_entry_del (struct mlxsw_sp*,struct mlxsw_sp_fib_entry*) ;
 int mlxsw_sp_fib_entry_offload_refresh (struct mlxsw_sp_fib_entry*,int,int ) ;
 int mlxsw_sp_fib_entry_update (struct mlxsw_sp*,struct mlxsw_sp_fib_entry*) ;
 int mlxsw_sp_fib_node_entry_is_first (struct mlxsw_sp_fib_node*,struct mlxsw_sp_fib_entry*) ;

__attribute__((used)) static void mlxsw_sp_fib_node_entry_del(struct mlxsw_sp *mlxsw_sp,
     struct mlxsw_sp_fib_entry *fib_entry)
{
 struct mlxsw_sp_fib_node *fib_node = fib_entry->fib_node;

 if (!mlxsw_sp_fib_node_entry_is_first(fib_node, fib_entry))
  return;


 if (!list_is_singular(&fib_node->entry_list)) {
  struct mlxsw_sp_fib_entry *n = list_next_entry(fib_entry, list);
  enum mlxsw_reg_ralue_op op = MLXSW_REG_RALUE_OP_WRITE_DELETE;

  mlxsw_sp_fib_entry_update(mlxsw_sp, n);
  mlxsw_sp_fib_entry_offload_refresh(fib_entry, op, 0);
  return;
 }

 mlxsw_sp_fib_entry_del(mlxsw_sp, fib_entry);
}
