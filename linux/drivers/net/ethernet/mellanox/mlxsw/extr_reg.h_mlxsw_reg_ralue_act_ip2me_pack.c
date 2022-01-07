
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MLXSW_REG_RALUE_ACTION_TYPE_IP2ME ;
 int mlxsw_reg_ralue_action_type_set (char*,int ) ;

__attribute__((used)) static inline void
mlxsw_reg_ralue_act_ip2me_pack(char *payload)
{
 mlxsw_reg_ralue_action_type_set(payload,
     MLXSW_REG_RALUE_ACTION_TYPE_IP2ME);
}
