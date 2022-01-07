
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_sspr_local_port_set (char*,int ) ;
 int mlxsw_reg_sspr_m_set (char*,int) ;
 int mlxsw_reg_sspr_sub_port_set (char*,int ) ;
 int mlxsw_reg_sspr_system_port_set (char*,int ) ;
 int sspr ;

__attribute__((used)) static inline void mlxsw_reg_sspr_pack(char *payload, u8 local_port)
{
 MLXSW_REG_ZERO(sspr, payload);
 mlxsw_reg_sspr_m_set(payload, 1);
 mlxsw_reg_sspr_local_port_set(payload, local_port);
 mlxsw_reg_sspr_sub_port_set(payload, 0);
 mlxsw_reg_sspr_system_port_set(payload, local_port);
}
