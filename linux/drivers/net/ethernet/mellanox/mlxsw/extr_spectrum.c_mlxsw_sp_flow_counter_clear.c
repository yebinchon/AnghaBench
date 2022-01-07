
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_FLOW_COUNTER_SET_TYPE_PACKETS_BYTES ;
 int MLXSW_REG_MGPC_LEN ;
 int MLXSW_REG_MGPC_OPCODE_CLEAR ;
 int mgpc ;
 int mlxsw_reg_mgpc_pack (char*,unsigned int,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;

__attribute__((used)) static int mlxsw_sp_flow_counter_clear(struct mlxsw_sp *mlxsw_sp,
           unsigned int counter_index)
{
 char mgpc_pl[MLXSW_REG_MGPC_LEN];

 mlxsw_reg_mgpc_pack(mgpc_pl, counter_index, MLXSW_REG_MGPC_OPCODE_CLEAR,
       MLXSW_REG_FLOW_COUNTER_SET_TYPE_PACKETS_BYTES);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(mgpc), mgpc_pl);
}
