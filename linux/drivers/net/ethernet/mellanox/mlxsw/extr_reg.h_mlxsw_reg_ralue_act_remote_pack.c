
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
typedef enum mlxsw_reg_ralue_trap_action { ____Placeholder_mlxsw_reg_ralue_trap_action } mlxsw_reg_ralue_trap_action ;


 int MLXSW_REG_RALUE_ACTION_TYPE_REMOTE ;
 int mlxsw_reg_ralue_action_type_set (char*,int ) ;
 int mlxsw_reg_ralue_adjacency_index_set (char*,int ) ;
 int mlxsw_reg_ralue_ecmp_size_set (char*,int ) ;
 int mlxsw_reg_ralue_trap_action_set (char*,int) ;
 int mlxsw_reg_ralue_trap_id_set (char*,int ) ;

__attribute__((used)) static inline void
mlxsw_reg_ralue_act_remote_pack(char *payload,
    enum mlxsw_reg_ralue_trap_action trap_action,
    u16 trap_id, u32 adjacency_index, u16 ecmp_size)
{
 mlxsw_reg_ralue_action_type_set(payload,
     MLXSW_REG_RALUE_ACTION_TYPE_REMOTE);
 mlxsw_reg_ralue_trap_action_set(payload, trap_action);
 mlxsw_reg_ralue_trap_id_set(payload, trap_id);
 mlxsw_reg_ralue_adjacency_index_set(payload, adjacency_index);
 mlxsw_reg_ralue_ecmp_size_set(payload, ecmp_size);
}
