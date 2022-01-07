
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mlxsw_core {int dummy; } ;


 int MLXSW_CMD_MBOX_SIZE ;
 int MLXSW_CMD_OPCODE_2ERR_DQ ;
 int mlxsw_cmd_exec_out (struct mlxsw_core*,int ,int ,int ,int,char*,int ) ;

__attribute__((used)) static inline int __mlxsw_cmd_query_dq(struct mlxsw_core *mlxsw_core,
           char *out_mbox, u32 dq_number,
           u8 opcode_mod)
{
 return mlxsw_cmd_exec_out(mlxsw_core, MLXSW_CMD_OPCODE_2ERR_DQ,
      opcode_mod, dq_number, 0,
      out_mbox, MLXSW_CMD_MBOX_SIZE);
}
