
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int MLXSW_REG_SLCOR_COL_LAG_ADD_PORT ;
 int mlxsw_reg_slcor_pack (char*,int ,int ,int ) ;
 int mlxsw_reg_slcor_port_index_set (char*,int ) ;

__attribute__((used)) static inline void mlxsw_reg_slcor_port_add_pack(char *payload,
       u8 local_port, u16 lag_id,
       u8 port_index)
{
 mlxsw_reg_slcor_pack(payload, local_port, lag_id,
        MLXSW_REG_SLCOR_COL_LAG_ADD_PORT);
 mlxsw_reg_slcor_port_index_set(payload, port_index);
}
