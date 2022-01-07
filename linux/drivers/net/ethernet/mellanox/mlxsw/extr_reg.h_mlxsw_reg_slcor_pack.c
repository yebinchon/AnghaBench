
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef enum mlxsw_reg_slcor_col { ____Placeholder_mlxsw_reg_slcor_col } mlxsw_reg_slcor_col ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_slcor_col_set (char*,int) ;
 int mlxsw_reg_slcor_lag_id_set (char*,int ) ;
 int mlxsw_reg_slcor_local_port_set (char*,int ) ;
 int slcor ;

__attribute__((used)) static inline void mlxsw_reg_slcor_pack(char *payload,
     u8 local_port, u16 lag_id,
     enum mlxsw_reg_slcor_col col)
{
 MLXSW_REG_ZERO(slcor, payload);
 mlxsw_reg_slcor_col_set(payload, col);
 mlxsw_reg_slcor_local_port_set(payload, local_port);
 mlxsw_reg_slcor_lag_id_set(payload, lag_id);
}
