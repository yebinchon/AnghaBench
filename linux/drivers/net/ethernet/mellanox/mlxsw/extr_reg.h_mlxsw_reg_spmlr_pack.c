
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum mlxsw_reg_spmlr_learn_mode { ____Placeholder_mlxsw_reg_spmlr_learn_mode } mlxsw_reg_spmlr_learn_mode ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_spmlr_learn_mode_set (char*,int) ;
 int mlxsw_reg_spmlr_local_port_set (char*,int ) ;
 int mlxsw_reg_spmlr_sub_port_set (char*,int ) ;
 int spmlr ;

__attribute__((used)) static inline void mlxsw_reg_spmlr_pack(char *payload, u8 local_port,
     enum mlxsw_reg_spmlr_learn_mode mode)
{
 MLXSW_REG_ZERO(spmlr, payload);
 mlxsw_reg_spmlr_local_port_set(payload, local_port);
 mlxsw_reg_spmlr_sub_port_set(payload, 0);
 mlxsw_reg_spmlr_learn_mode_set(payload, mode);
}
