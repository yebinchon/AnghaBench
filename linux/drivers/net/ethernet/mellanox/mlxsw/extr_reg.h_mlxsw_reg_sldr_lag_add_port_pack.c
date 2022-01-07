
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MLXSW_REG_SLDR_OP_LAG_ADD_PORT_LIST ;
 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_sldr_lag_id_set (char*,int ) ;
 int mlxsw_reg_sldr_num_ports_set (char*,int) ;
 int mlxsw_reg_sldr_op_set (char*,int ) ;
 int mlxsw_reg_sldr_system_port_set (char*,int ,int ) ;
 int sldr ;

__attribute__((used)) static inline void mlxsw_reg_sldr_lag_add_port_pack(char *payload, u8 lag_id,
          u8 local_port)
{
 MLXSW_REG_ZERO(sldr, payload);
 mlxsw_reg_sldr_op_set(payload, MLXSW_REG_SLDR_OP_LAG_ADD_PORT_LIST);
 mlxsw_reg_sldr_lag_id_set(payload, lag_id);
 mlxsw_reg_sldr_num_ports_set(payload, 1);
 mlxsw_reg_sldr_system_port_set(payload, 0, local_port);
}
