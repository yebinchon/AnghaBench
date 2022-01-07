
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MLXSW_REG_SLDR_OP_LAG_CREATE ;
 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_sldr_lag_id_set (char*,int ) ;
 int mlxsw_reg_sldr_op_set (char*,int ) ;
 int sldr ;

__attribute__((used)) static inline void mlxsw_reg_sldr_lag_create_pack(char *payload, u8 lag_id)
{
 MLXSW_REG_ZERO(sldr, payload);
 mlxsw_reg_sldr_op_set(payload, MLXSW_REG_SLDR_OP_LAG_CREATE);
 mlxsw_reg_sldr_lag_id_set(payload, lag_id);
}
