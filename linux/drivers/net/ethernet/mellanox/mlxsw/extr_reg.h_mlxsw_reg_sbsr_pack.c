
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_sbsr_clr_set (char*,int) ;
 int sbsr ;

__attribute__((used)) static inline void mlxsw_reg_sbsr_pack(char *payload, bool clr)
{
 MLXSW_REG_ZERO(sbsr, payload);
 mlxsw_reg_sbsr_clr_set(payload, clr);
}
