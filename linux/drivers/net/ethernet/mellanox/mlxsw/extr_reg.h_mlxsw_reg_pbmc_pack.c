
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_pbmc_local_port_set (char*,int ) ;
 int mlxsw_reg_pbmc_xoff_refresh_set (char*,int ) ;
 int mlxsw_reg_pbmc_xoff_timer_value_set (char*,int ) ;
 int pbmc ;

__attribute__((used)) static inline void mlxsw_reg_pbmc_pack(char *payload, u8 local_port,
           u16 xoff_timer_value, u16 xoff_refresh)
{
 MLXSW_REG_ZERO(pbmc, payload);
 mlxsw_reg_pbmc_local_port_set(payload, local_port);
 mlxsw_reg_pbmc_xoff_timer_value_set(payload, xoff_timer_value);
 mlxsw_reg_pbmc_xoff_refresh_set(payload, xoff_refresh);
}
