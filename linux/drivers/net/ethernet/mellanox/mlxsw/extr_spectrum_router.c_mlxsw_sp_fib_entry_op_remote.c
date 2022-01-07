
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct mlxsw_sp_fib_entry {TYPE_1__* nh_group; } ;
struct mlxsw_sp {int core; } ;
typedef enum mlxsw_reg_ralue_trap_action { ____Placeholder_mlxsw_reg_ralue_trap_action } mlxsw_reg_ralue_trap_action ;
typedef enum mlxsw_reg_ralue_op { ____Placeholder_mlxsw_reg_ralue_op } mlxsw_reg_ralue_op ;
struct TYPE_2__ {int ecmp_size; int adj_index; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_RALUE_LEN ;
 int MLXSW_REG_RALUE_TRAP_ACTION_NOP ;
 int MLXSW_REG_RALUE_TRAP_ACTION_TRAP ;
 int MLXSW_TRAP_ID_RTR_INGRESS0 ;
 int mlxsw_reg_ralue_act_remote_pack (char*,int,int ,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int mlxsw_sp_fib_entry_ralue_pack (char*,struct mlxsw_sp_fib_entry*,int) ;
 scalar_t__ mlxsw_sp_fib_entry_should_offload (struct mlxsw_sp_fib_entry*) ;
 int ralue ;

__attribute__((used)) static int mlxsw_sp_fib_entry_op_remote(struct mlxsw_sp *mlxsw_sp,
     struct mlxsw_sp_fib_entry *fib_entry,
     enum mlxsw_reg_ralue_op op)
{
 char ralue_pl[MLXSW_REG_RALUE_LEN];
 enum mlxsw_reg_ralue_trap_action trap_action;
 u16 trap_id = 0;
 u32 adjacency_index = 0;
 u16 ecmp_size = 0;





 if (mlxsw_sp_fib_entry_should_offload(fib_entry)) {
  trap_action = MLXSW_REG_RALUE_TRAP_ACTION_NOP;
  adjacency_index = fib_entry->nh_group->adj_index;
  ecmp_size = fib_entry->nh_group->ecmp_size;
 } else {
  trap_action = MLXSW_REG_RALUE_TRAP_ACTION_TRAP;
  trap_id = MLXSW_TRAP_ID_RTR_INGRESS0;
 }

 mlxsw_sp_fib_entry_ralue_pack(ralue_pl, fib_entry, op);
 mlxsw_reg_ralue_act_remote_pack(ralue_pl, trap_action, trap_id,
     adjacency_index, ecmp_size);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(ralue), ralue_pl);
}
