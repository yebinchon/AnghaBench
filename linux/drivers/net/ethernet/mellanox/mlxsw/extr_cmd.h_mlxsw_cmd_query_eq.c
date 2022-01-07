
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlxsw_core {int dummy; } ;


 int MLXSW_CMD_MBOX_SIZE ;
 int MLXSW_CMD_OPCODE_QUERY_EQ ;
 int mlxsw_cmd_exec_out (struct mlxsw_core*,int ,int ,int ,int,char*,int ) ;

__attribute__((used)) static inline int mlxsw_cmd_query_eq(struct mlxsw_core *mlxsw_core,
         char *out_mbox, u32 eq_number)
{
 return mlxsw_cmd_exec_out(mlxsw_core, MLXSW_CMD_OPCODE_QUERY_EQ,
      0, eq_number, 0,
      out_mbox, MLXSW_CMD_MBOX_SIZE);
}
