
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MLXSW_REG_ZERO (int ,char*) ;
 int mgir ;

__attribute__((used)) static inline void mlxsw_reg_mgir_pack(char *payload)
{
 MLXSW_REG_ZERO(mgir, payload);
}
