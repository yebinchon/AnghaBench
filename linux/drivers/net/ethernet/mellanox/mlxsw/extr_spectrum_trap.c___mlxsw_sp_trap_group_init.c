
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mlxsw_sp {int core; } ;
struct devlink_trap_group {int id; } ;



 int EINVAL ;
 int MLXSW_REG (int ) ;
 int MLXSW_REG_HTGT_LEN ;
 int MLXSW_REG_HTGT_TRAP_GROUP_SP_L2_DISCARDS ;
 int MLXSW_SP_DISCARD_POLICER_ID ;
 int htgt ;
 int mlxsw_reg_htgt_pack (char*,int,int ,int,int) ;
 int mlxsw_reg_write (int ,int ,char*) ;

__attribute__((used)) static int
__mlxsw_sp_trap_group_init(struct mlxsw_sp *mlxsw_sp,
      const struct devlink_trap_group *group)
{
 char htgt_pl[MLXSW_REG_HTGT_LEN];
 u8 priority, tc, group_id;
 u16 policer_id;

 switch (group->id) {
 case 128:
  group_id = MLXSW_REG_HTGT_TRAP_GROUP_SP_L2_DISCARDS;
  policer_id = MLXSW_SP_DISCARD_POLICER_ID;
  priority = 0;
  tc = 1;
  break;
 default:
  return -EINVAL;
 }

 mlxsw_reg_htgt_pack(htgt_pl, group_id, policer_id, priority, tc);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(htgt), htgt_pl);
}
