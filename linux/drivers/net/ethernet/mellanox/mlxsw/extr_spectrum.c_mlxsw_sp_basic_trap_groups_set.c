
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_core {int dummy; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_HTGT_DEFAULT_PRIORITY ;
 int MLXSW_REG_HTGT_DEFAULT_TC ;
 int MLXSW_REG_HTGT_INVALID_POLICER ;
 int MLXSW_REG_HTGT_LEN ;
 int MLXSW_REG_HTGT_TRAP_GROUP_EMAD ;
 int htgt ;
 int mlxsw_reg_htgt_pack (char*,int ,int ,int ,int ) ;
 int mlxsw_reg_write (struct mlxsw_core*,int ,char*) ;

__attribute__((used)) static int mlxsw_sp_basic_trap_groups_set(struct mlxsw_core *mlxsw_core)
{
 char htgt_pl[MLXSW_REG_HTGT_LEN];

 mlxsw_reg_htgt_pack(htgt_pl, MLXSW_REG_HTGT_TRAP_GROUP_EMAD,
       MLXSW_REG_HTGT_INVALID_POLICER,
       MLXSW_REG_HTGT_DEFAULT_PRIORITY,
       MLXSW_REG_HTGT_DEFAULT_TC);
 return mlxsw_reg_write(mlxsw_core, MLXSW_REG(htgt), htgt_pl);
}
