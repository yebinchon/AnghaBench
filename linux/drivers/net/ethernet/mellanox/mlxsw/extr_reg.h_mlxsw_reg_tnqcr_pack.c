
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_tnqcr_enc_set_dscp_set (char*,int ) ;
 int tnqcr ;

__attribute__((used)) static inline void mlxsw_reg_tnqcr_pack(char *payload)
{
 MLXSW_REG_ZERO(tnqcr, payload);
 mlxsw_reg_tnqcr_enc_set_dscp_set(payload, 0);
}
