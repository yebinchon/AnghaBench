
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_pgcr_default_action_pointer_base_set (char*,int ) ;
 int pgcr ;

__attribute__((used)) static inline void mlxsw_reg_pgcr_pack(char *payload, u32 pointer_base)
{
 MLXSW_REG_ZERO(pgcr, payload);
 mlxsw_reg_pgcr_default_action_pointer_base_set(payload, pointer_base);
}
