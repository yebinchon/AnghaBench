
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_mrsr_command_set (char*,int) ;
 int mrsr ;

__attribute__((used)) static inline void mlxsw_reg_mrsr_pack(char *payload)
{
 MLXSW_REG_ZERO(mrsr, payload);
 mlxsw_reg_mrsr_command_set(payload, 1);
}
