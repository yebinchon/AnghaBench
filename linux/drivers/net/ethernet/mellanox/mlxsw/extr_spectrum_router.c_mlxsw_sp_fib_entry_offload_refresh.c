
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_fib_entry {int dummy; } ;
typedef enum mlxsw_reg_ralue_op { ____Placeholder_mlxsw_reg_ralue_op } mlxsw_reg_ralue_op ;




 int mlxsw_sp_fib_entry_offload_set (struct mlxsw_sp_fib_entry*) ;
 void mlxsw_sp_fib_entry_offload_unset (struct mlxsw_sp_fib_entry*) ;
 int mlxsw_sp_fib_entry_should_offload (struct mlxsw_sp_fib_entry*) ;

__attribute__((used)) static void
mlxsw_sp_fib_entry_offload_refresh(struct mlxsw_sp_fib_entry *fib_entry,
       enum mlxsw_reg_ralue_op op, int err)
{
 switch (op) {
 case 129:
  return mlxsw_sp_fib_entry_offload_unset(fib_entry);
 case 128:
  if (err)
   return;
  if (mlxsw_sp_fib_entry_should_offload(fib_entry))
   mlxsw_sp_fib_entry_offload_set(fib_entry);
  else
   mlxsw_sp_fib_entry_offload_unset(fib_entry);
  return;
 default:
  return;
 }
}
