
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_fib_entry {int type; } ;
struct mlxsw_sp {int dummy; } ;
typedef enum mlxsw_reg_ralue_op { ____Placeholder_mlxsw_reg_ralue_op } mlxsw_reg_ralue_op ;


 int EINVAL ;






 int mlxsw_sp_fib_entry_op_blackhole (struct mlxsw_sp*,struct mlxsw_sp_fib_entry*,int) ;
 int mlxsw_sp_fib_entry_op_ipip_decap (struct mlxsw_sp*,struct mlxsw_sp_fib_entry*,int) ;
 int mlxsw_sp_fib_entry_op_local (struct mlxsw_sp*,struct mlxsw_sp_fib_entry*,int) ;
 int mlxsw_sp_fib_entry_op_nve_decap (struct mlxsw_sp*,struct mlxsw_sp_fib_entry*,int) ;
 int mlxsw_sp_fib_entry_op_remote (struct mlxsw_sp*,struct mlxsw_sp_fib_entry*,int) ;
 int mlxsw_sp_fib_entry_op_trap (struct mlxsw_sp*,struct mlxsw_sp_fib_entry*,int) ;

__attribute__((used)) static int __mlxsw_sp_fib_entry_op(struct mlxsw_sp *mlxsw_sp,
       struct mlxsw_sp_fib_entry *fib_entry,
       enum mlxsw_reg_ralue_op op)
{
 switch (fib_entry->type) {
 case 129:
  return mlxsw_sp_fib_entry_op_remote(mlxsw_sp, fib_entry, op);
 case 131:
  return mlxsw_sp_fib_entry_op_local(mlxsw_sp, fib_entry, op);
 case 128:
  return mlxsw_sp_fib_entry_op_trap(mlxsw_sp, fib_entry, op);
 case 133:
  return mlxsw_sp_fib_entry_op_blackhole(mlxsw_sp, fib_entry, op);
 case 132:
  return mlxsw_sp_fib_entry_op_ipip_decap(mlxsw_sp,
       fib_entry, op);
 case 130:
  return mlxsw_sp_fib_entry_op_nve_decap(mlxsw_sp, fib_entry, op);
 }
 return -EINVAL;
}
