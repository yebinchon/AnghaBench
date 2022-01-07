
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_qtctm_local_port_set (char*,int ) ;
 int mlxsw_reg_qtctm_mc_set (char*,int) ;
 int qtctm ;

__attribute__((used)) static inline void
mlxsw_reg_qtctm_pack(char *payload, u8 local_port, bool mc)
{
 MLXSW_REG_ZERO(qtctm, payload);
 mlxsw_reg_qtctm_local_port_set(payload, local_port);
 mlxsw_reg_qtctm_mc_set(payload, mc);
}
