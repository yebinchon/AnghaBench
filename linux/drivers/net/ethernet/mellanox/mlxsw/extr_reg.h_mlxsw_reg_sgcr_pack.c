
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_sgcr_llb_set (char*,int) ;
 int sgcr ;

__attribute__((used)) static inline void mlxsw_reg_sgcr_pack(char *payload, bool llb)
{
 MLXSW_REG_ZERO(sgcr, payload);
 mlxsw_reg_sgcr_llb_set(payload, !!llb);
}
