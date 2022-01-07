
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_sfdat_age_time_set (char*,int ) ;
 int mlxsw_reg_sfdat_swid_set (char*,int ) ;
 int sfdat ;

__attribute__((used)) static inline void mlxsw_reg_sfdat_pack(char *payload, u32 age_time)
{
 MLXSW_REG_ZERO(sfdat, payload);
 mlxsw_reg_sfdat_swid_set(payload, 0);
 mlxsw_reg_sfdat_age_time_set(payload, age_time);
}
