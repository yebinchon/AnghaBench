
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct mlxsw_sp {int core; } ;
struct devlink_trap_group {int id; } ;
typedef enum mlxsw_reg_qpcr_ir_units { ____Placeholder_mlxsw_reg_qpcr_ir_units } mlxsw_reg_qpcr_ir_units ;



 int EINVAL ;
 int MLXSW_REG (int ) ;
 int MLXSW_REG_QPCR_IR_UNITS_M ;
 int MLXSW_REG_QPCR_LEN ;
 int MLXSW_SP_DISCARD_POLICER_ID ;
 int mlxsw_reg_qpcr_pack (char*,int ,int,int,int,int) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int qpcr ;

__attribute__((used)) static int
mlxsw_sp_trap_group_policer_init(struct mlxsw_sp *mlxsw_sp,
     const struct devlink_trap_group *group)
{
 enum mlxsw_reg_qpcr_ir_units ir_units;
 char qpcr_pl[MLXSW_REG_QPCR_LEN];
 u16 policer_id;
 u8 burst_size;
 bool is_bytes;
 u32 rate;

 switch (group->id) {
 case 128:
  policer_id = MLXSW_SP_DISCARD_POLICER_ID;
  ir_units = MLXSW_REG_QPCR_IR_UNITS_M;
  is_bytes = 0;
  rate = 10 * 1024;
  burst_size = 7;
  break;
 default:
  return -EINVAL;
 }

 mlxsw_reg_qpcr_pack(qpcr_pl, policer_id, ir_units, is_bytes, rate,
       burst_size);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(qpcr), qpcr_pl);
}
