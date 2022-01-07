
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mlxsw_core {int dummy; } ;
typedef enum mlxsw_reg_qpcr_ir_units { ____Placeholder_mlxsw_reg_qpcr_ir_units } mlxsw_reg_qpcr_ir_units ;


 int EIO ;
 int MAX_CPU_POLICERS ;
 int MLXSW_CORE_RES_GET (struct mlxsw_core*,int ) ;
 int MLXSW_CORE_RES_VALID (struct mlxsw_core*,int ) ;
 int MLXSW_REG (int ) ;
 int MLXSW_REG_QPCR_IR_UNITS_M ;
 int MLXSW_REG_QPCR_LEN ;
 int mlxsw_reg_qpcr_pack (char*,int,int,int,int,int) ;
 int mlxsw_reg_write (struct mlxsw_core*,int ,char*) ;
 int qpcr ;

__attribute__((used)) static int mlxsw_sp_cpu_policers_set(struct mlxsw_core *mlxsw_core)
{
 char qpcr_pl[MLXSW_REG_QPCR_LEN];
 enum mlxsw_reg_qpcr_ir_units ir_units;
 int max_cpu_policers;
 bool is_bytes;
 u8 burst_size;
 u32 rate;
 int i, err;

 if (!MLXSW_CORE_RES_VALID(mlxsw_core, MAX_CPU_POLICERS))
  return -EIO;

 max_cpu_policers = MLXSW_CORE_RES_GET(mlxsw_core, MAX_CPU_POLICERS);

 ir_units = MLXSW_REG_QPCR_IR_UNITS_M;
 for (i = 0; i < max_cpu_policers; i++) {
  is_bytes = 0;
  switch (i) {
  case 128:
  case 139:
  case 137:
  case 135:
  case 134:
  case 129:
  case 138:
   rate = 128;
   burst_size = 7;
   break;
  case 143:
  case 141:
   rate = 16 * 1024;
   burst_size = 10;
   break;
  case 146:
  case 147:
  case 145:
  case 144:
  case 130:
  case 131:
  case 140:
  case 136:
   rate = 1024;
   burst_size = 7;
   break;
  case 142:
   rate = 1024;
   burst_size = 7;
   break;
  case 133:
   rate = 24 * 1024;
   burst_size = 12;
   break;
  case 132:
   rate = 19 * 1024;
   burst_size = 12;
   break;
  default:
   continue;
  }

  mlxsw_reg_qpcr_pack(qpcr_pl, i, ir_units, is_bytes, rate,
        burst_size);
  err = mlxsw_reg_write(mlxsw_core, MLXSW_REG(qpcr), qpcr_pl);
  if (err)
   return err;
 }

 return 0;
}
