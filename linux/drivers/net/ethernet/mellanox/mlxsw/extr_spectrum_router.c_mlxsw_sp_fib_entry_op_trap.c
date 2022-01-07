
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_fib_entry {int dummy; } ;
struct mlxsw_sp {int core; } ;
typedef enum mlxsw_reg_ralue_op { ____Placeholder_mlxsw_reg_ralue_op } mlxsw_reg_ralue_op ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_RALUE_LEN ;
 int mlxsw_reg_ralue_act_ip2me_pack (char*) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int mlxsw_sp_fib_entry_ralue_pack (char*,struct mlxsw_sp_fib_entry*,int) ;
 int ralue ;

__attribute__((used)) static int mlxsw_sp_fib_entry_op_trap(struct mlxsw_sp *mlxsw_sp,
          struct mlxsw_sp_fib_entry *fib_entry,
          enum mlxsw_reg_ralue_op op)
{
 char ralue_pl[MLXSW_REG_RALUE_LEN];

 mlxsw_sp_fib_entry_ralue_pack(ralue_pl, fib_entry, op);
 mlxsw_reg_ralue_act_ip2me_pack(ralue_pl);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(ralue), ralue_pl);
}
