
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum mlxsw_reg_ralue_trap_action { ____Placeholder_mlxsw_reg_ralue_trap_action } mlxsw_reg_ralue_trap_action ;


 int MLXSW_REG_RALUE_ACTION_TYPE_LOCAL ;
 int mlxsw_reg_ralue_action_type_set (char*,int ) ;
 int mlxsw_reg_ralue_local_erif_set (char*,int ) ;
 int mlxsw_reg_ralue_trap_action_set (char*,int) ;
 int mlxsw_reg_ralue_trap_id_set (char*,int ) ;

__attribute__((used)) static inline void
mlxsw_reg_ralue_act_local_pack(char *payload,
          enum mlxsw_reg_ralue_trap_action trap_action,
          u16 trap_id, u16 local_erif)
{
 mlxsw_reg_ralue_action_type_set(payload,
     MLXSW_REG_RALUE_ACTION_TYPE_LOCAL);
 mlxsw_reg_ralue_trap_action_set(payload, trap_action);
 mlxsw_reg_ralue_trap_id_set(payload, trap_id);
 mlxsw_reg_ralue_local_erif_set(payload, local_erif);
}
