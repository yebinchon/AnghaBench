
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MLXSW_REG_RALUE_ACTION_TYPE_IP2ME ;
 int mlxsw_reg_ralue_action_type_set (char*,int ) ;
 int mlxsw_reg_ralue_ip2me_tunnel_ptr_set (char*,int ) ;
 int mlxsw_reg_ralue_ip2me_v_set (char*,int) ;

__attribute__((used)) static inline void
mlxsw_reg_ralue_act_ip2me_tun_pack(char *payload, u32 tunnel_ptr)
{
 mlxsw_reg_ralue_action_type_set(payload,
     MLXSW_REG_RALUE_ACTION_TYPE_IP2ME);
 mlxsw_reg_ralue_ip2me_v_set(payload, 1);
 mlxsw_reg_ralue_ip2me_tunnel_ptr_set(payload, tunnel_ptr);
}
