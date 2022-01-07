
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_tigcr_ttl_uc_set (char*,int ) ;
 int mlxsw_reg_tigcr_ttlc_set (char*,int) ;
 int tigcr ;

__attribute__((used)) static inline void mlxsw_reg_tigcr_pack(char *payload, bool ttlc, u8 ttl_uc)
{
 MLXSW_REG_ZERO(tigcr, payload);
 mlxsw_reg_tigcr_ttlc_set(payload, ttlc);
 mlxsw_reg_tigcr_ttl_uc_set(payload, ttl_uc);
}
