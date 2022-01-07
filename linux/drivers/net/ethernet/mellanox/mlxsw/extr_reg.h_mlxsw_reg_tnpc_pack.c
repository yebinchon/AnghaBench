
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mlxsw_reg_tnpc_tunnel_port { ____Placeholder_mlxsw_reg_tnpc_tunnel_port } mlxsw_reg_tnpc_tunnel_port ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_tnpc_learn_enable_v4_set (char*,int) ;
 int mlxsw_reg_tnpc_learn_enable_v6_set (char*,int) ;
 int mlxsw_reg_tnpc_tunnel_port_set (char*,int) ;
 int tnpc ;

__attribute__((used)) static inline void mlxsw_reg_tnpc_pack(char *payload,
           enum mlxsw_reg_tnpc_tunnel_port tport,
           bool learn_enable)
{
 MLXSW_REG_ZERO(tnpc, payload);
 mlxsw_reg_tnpc_tunnel_port_set(payload, tport);
 mlxsw_reg_tnpc_learn_enable_v4_set(payload, learn_enable);
 mlxsw_reg_tnpc_learn_enable_v6_set(payload, learn_enable);
}
