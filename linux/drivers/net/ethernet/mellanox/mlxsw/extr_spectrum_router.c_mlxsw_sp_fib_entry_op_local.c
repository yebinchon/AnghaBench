
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct mlxsw_sp_rif {int rif_index; } ;
struct mlxsw_sp_fib_entry {TYPE_1__* nh_group; } ;
struct mlxsw_sp {int core; } ;
typedef enum mlxsw_reg_ralue_trap_action { ____Placeholder_mlxsw_reg_ralue_trap_action } mlxsw_reg_ralue_trap_action ;
typedef enum mlxsw_reg_ralue_op { ____Placeholder_mlxsw_reg_ralue_op } mlxsw_reg_ralue_op ;
struct TYPE_2__ {struct mlxsw_sp_rif* nh_rif; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_RALUE_LEN ;
 int MLXSW_REG_RALUE_TRAP_ACTION_NOP ;
 int MLXSW_REG_RALUE_TRAP_ACTION_TRAP ;
 int MLXSW_TRAP_ID_RTR_INGRESS0 ;
 int mlxsw_reg_ralue_act_local_pack (char*,int,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int mlxsw_sp_fib_entry_ralue_pack (char*,struct mlxsw_sp_fib_entry*,int) ;
 scalar_t__ mlxsw_sp_fib_entry_should_offload (struct mlxsw_sp_fib_entry*) ;
 int ralue ;

__attribute__((used)) static int mlxsw_sp_fib_entry_op_local(struct mlxsw_sp *mlxsw_sp,
           struct mlxsw_sp_fib_entry *fib_entry,
           enum mlxsw_reg_ralue_op op)
{
 struct mlxsw_sp_rif *rif = fib_entry->nh_group->nh_rif;
 enum mlxsw_reg_ralue_trap_action trap_action;
 char ralue_pl[MLXSW_REG_RALUE_LEN];
 u16 trap_id = 0;
 u16 rif_index = 0;

 if (mlxsw_sp_fib_entry_should_offload(fib_entry)) {
  trap_action = MLXSW_REG_RALUE_TRAP_ACTION_NOP;
  rif_index = rif->rif_index;
 } else {
  trap_action = MLXSW_REG_RALUE_TRAP_ACTION_TRAP;
  trap_id = MLXSW_TRAP_ID_RTR_INGRESS0;
 }

 mlxsw_sp_fib_entry_ralue_pack(ralue_pl, fib_entry, op);
 mlxsw_reg_ralue_act_local_pack(ralue_pl, trap_action, trap_id,
           rif_index);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(ralue), ralue_pl);
}
