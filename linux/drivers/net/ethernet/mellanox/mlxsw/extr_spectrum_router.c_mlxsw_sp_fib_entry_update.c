
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_fib_entry {int dummy; } ;
struct mlxsw_sp {int dummy; } ;


 int MLXSW_REG_RALUE_OP_WRITE_WRITE ;
 int mlxsw_sp_fib_entry_op (struct mlxsw_sp*,struct mlxsw_sp_fib_entry*,int ) ;

__attribute__((used)) static int mlxsw_sp_fib_entry_update(struct mlxsw_sp *mlxsw_sp,
         struct mlxsw_sp_fib_entry *fib_entry)
{
 return mlxsw_sp_fib_entry_op(mlxsw_sp, fib_entry,
         MLXSW_REG_RALUE_OP_WRITE_WRITE);
}
