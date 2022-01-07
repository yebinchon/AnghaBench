
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mfsl ;
 int mlxsw_reg_mfsl_tach_max_set (char*,int ) ;
 int mlxsw_reg_mfsl_tach_min_set (char*,int ) ;
 int mlxsw_reg_mfsl_tacho_set (char*,int ) ;

__attribute__((used)) static inline void mlxsw_reg_mfsl_pack(char *payload, u8 tacho,
           u16 tach_min, u16 tach_max)
{
 MLXSW_REG_ZERO(mfsl, payload);
 mlxsw_reg_mfsl_tacho_set(payload, tacho);
 mlxsw_reg_mfsl_tach_min_set(payload, tach_min);
 mlxsw_reg_mfsl_tach_max_set(payload, tach_max);
}
