
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_tnqdr_dscp_set (char*,int ) ;
 int mlxsw_reg_tnqdr_local_port_set (char*,int ) ;
 int tnqdr ;

__attribute__((used)) static inline void mlxsw_reg_tnqdr_pack(char *payload, u8 local_port)
{
 MLXSW_REG_ZERO(tnqdr, payload);
 mlxsw_reg_tnqdr_local_port_set(payload, local_port);
 mlxsw_reg_tnqdr_dscp_set(payload, 0);
}
