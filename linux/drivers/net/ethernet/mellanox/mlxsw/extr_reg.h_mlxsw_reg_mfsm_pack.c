
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mfsm ;
 int mlxsw_reg_mfsm_tacho_set (char*,int ) ;

__attribute__((used)) static inline void mlxsw_reg_mfsm_pack(char *payload, u8 tacho)
{
 MLXSW_REG_ZERO(mfsm, payload);
 mlxsw_reg_mfsm_tacho_set(payload, tacho);
}
