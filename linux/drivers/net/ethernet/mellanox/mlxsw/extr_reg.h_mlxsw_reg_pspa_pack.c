
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_pspa_local_port_set (char*,int ) ;
 int mlxsw_reg_pspa_sub_port_set (char*,int ) ;
 int mlxsw_reg_pspa_swid_set (char*,int ) ;
 int pspa ;

__attribute__((used)) static inline void mlxsw_reg_pspa_pack(char *payload, u8 swid, u8 local_port)
{
 MLXSW_REG_ZERO(pspa, payload);
 mlxsw_reg_pspa_swid_set(payload, swid);
 mlxsw_reg_pspa_local_port_set(payload, local_port);
 mlxsw_reg_pspa_sub_port_set(payload, 0);
}
