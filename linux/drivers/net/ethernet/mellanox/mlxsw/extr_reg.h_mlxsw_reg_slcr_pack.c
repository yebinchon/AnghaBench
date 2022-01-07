
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int MLXSW_REG_SLCR_PP_GLOBAL ;
 int MLXSW_REG_SLCR_TYPE_CRC ;
 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_slcr_lag_hash_set (char*,int ) ;
 int mlxsw_reg_slcr_pp_set (char*,int ) ;
 int mlxsw_reg_slcr_seed_set (char*,int ) ;
 int mlxsw_reg_slcr_type_set (char*,int ) ;
 int slcr ;

__attribute__((used)) static inline void mlxsw_reg_slcr_pack(char *payload, u16 lag_hash, u32 seed)
{
 MLXSW_REG_ZERO(slcr, payload);
 mlxsw_reg_slcr_pp_set(payload, MLXSW_REG_SLCR_PP_GLOBAL);
 mlxsw_reg_slcr_type_set(payload, MLXSW_REG_SLCR_TYPE_CRC);
 mlxsw_reg_slcr_lag_hash_set(payload, lag_hash);
 mlxsw_reg_slcr_seed_set(payload, seed);
}
