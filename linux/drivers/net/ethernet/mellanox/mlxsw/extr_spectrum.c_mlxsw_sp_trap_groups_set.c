
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mlxsw_core {int dummy; } ;
typedef enum mlxsw_reg_htgt_trap_group { ____Placeholder_mlxsw_reg_htgt_trap_group } mlxsw_reg_htgt_trap_group ;


 int EIO ;
 int MAX_CPU_POLICERS ;
 int MAX_TRAP_GROUPS ;
 int MLXSW_CORE_RES_GET (struct mlxsw_core*,int ) ;
 int MLXSW_CORE_RES_VALID (struct mlxsw_core*,int ) ;
 int MLXSW_REG (int ) ;
 int MLXSW_REG_HTGT_DEFAULT_PRIORITY ;
 int MLXSW_REG_HTGT_DEFAULT_TC ;
 int MLXSW_REG_HTGT_INVALID_POLICER ;
 int MLXSW_REG_HTGT_LEN ;
 int htgt ;
 int mlxsw_reg_htgt_pack (char*,int,int,int,int) ;
 int mlxsw_reg_write (struct mlxsw_core*,int ,char*) ;

__attribute__((used)) static int mlxsw_sp_trap_groups_set(struct mlxsw_core *mlxsw_core)
{
 char htgt_pl[MLXSW_REG_HTGT_LEN];
 enum mlxsw_reg_htgt_trap_group i;
 int max_cpu_policers;
 int max_trap_groups;
 u8 priority, tc;
 u16 policer_id;
 int err;

 if (!MLXSW_CORE_RES_VALID(mlxsw_core, MAX_TRAP_GROUPS))
  return -EIO;

 max_trap_groups = MLXSW_CORE_RES_GET(mlxsw_core, MAX_TRAP_GROUPS);
 max_cpu_policers = MLXSW_CORE_RES_GET(mlxsw_core, MAX_CPU_POLICERS);

 for (i = 0; i < max_trap_groups; i++) {
  policer_id = i;
  switch (i) {
  case 128:
  case 139:
  case 137:
  case 135:
  case 134:
  case 133:
   priority = 5;
   tc = 5;
   break;
  case 147:
  case 146:
   priority = 4;
   tc = 4;
   break;
  case 143:
  case 142:
  case 141:
   priority = 3;
   tc = 3;
   break;
  case 148:
  case 140:
  case 129:
  case 132:
   priority = 2;
   tc = 2;
   break;
  case 144:
  case 130:
  case 131:
  case 136:
  case 138:
   priority = 1;
   tc = 1;
   break;
  case 145:
   priority = MLXSW_REG_HTGT_DEFAULT_PRIORITY;
   tc = MLXSW_REG_HTGT_DEFAULT_TC;
   policer_id = MLXSW_REG_HTGT_INVALID_POLICER;
   break;
  default:
   continue;
  }

  if (max_cpu_policers <= policer_id &&
      policer_id != MLXSW_REG_HTGT_INVALID_POLICER)
   return -EIO;

  mlxsw_reg_htgt_pack(htgt_pl, i, policer_id, priority, tc);
  err = mlxsw_reg_write(mlxsw_core, MLXSW_REG(htgt), htgt_pl);
  if (err)
   return err;
 }

 return 0;
}
