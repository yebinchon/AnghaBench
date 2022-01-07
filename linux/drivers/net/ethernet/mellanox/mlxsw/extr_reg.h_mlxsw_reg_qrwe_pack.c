
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_qrwe_dscp_set (char*,int) ;
 int mlxsw_reg_qrwe_local_port_set (char*,int ) ;
 int mlxsw_reg_qrwe_pcp_set (char*,int) ;
 int qrwe ;

__attribute__((used)) static inline void mlxsw_reg_qrwe_pack(char *payload, u8 local_port,
           bool rewrite_pcp, bool rewrite_dscp)
{
 MLXSW_REG_ZERO(qrwe, payload);
 mlxsw_reg_qrwe_local_port_set(payload, local_port);
 mlxsw_reg_qrwe_pcp_set(payload, rewrite_pcp);
 mlxsw_reg_qrwe_dscp_set(payload, rewrite_dscp);
}
