
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int MLXSW_REG_CWTP_PROFILE_TO_INDEX (int ) ;
 int mlxsw_reg_cwtp_profile_max_set (char*,int ,int ) ;
 int mlxsw_reg_cwtp_profile_min_set (char*,int ,int ) ;
 int mlxsw_reg_cwtp_profile_percent_set (char*,int ,int ) ;

__attribute__((used)) static inline void
mlxsw_reg_cwtp_profile_pack(char *payload, u8 profile, u32 min, u32 max,
       u32 probability)
{
 u8 index = MLXSW_REG_CWTP_PROFILE_TO_INDEX(profile);

 mlxsw_reg_cwtp_profile_min_set(payload, index, min);
 mlxsw_reg_cwtp_profile_max_set(payload, index, max);
 mlxsw_reg_cwtp_profile_percent_set(payload, index, probability);
}
