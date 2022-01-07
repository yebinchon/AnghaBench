
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_recr2_pp_set (char*,int) ;
 int mlxsw_reg_recr2_seed_set (char*,int ) ;
 int mlxsw_reg_recr2_sh_set (char*,int) ;
 int recr2 ;

__attribute__((used)) static inline void mlxsw_reg_recr2_pack(char *payload, u32 seed)
{
 MLXSW_REG_ZERO(recr2, payload);
 mlxsw_reg_recr2_pp_set(payload, 0);
 mlxsw_reg_recr2_sh_set(payload, 1);
 mlxsw_reg_recr2_seed_set(payload, seed);
}
