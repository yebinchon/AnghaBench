
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlxsw_core {int dummy; } ;


 int MLXSW_CMD_MBOX_SIZE ;
 int MLXSW_CMD_OPCODE_SW2HW_EQ ;
 int mlxsw_cmd_exec_in (struct mlxsw_core*,int ,int ,int ,char*,int ) ;

__attribute__((used)) static inline int mlxsw_cmd_sw2hw_eq(struct mlxsw_core *mlxsw_core,
         char *in_mbox, u32 eq_number)
{
 return mlxsw_cmd_exec_in(mlxsw_core, MLXSW_CMD_OPCODE_SW2HW_EQ,
     0, eq_number, in_mbox, MLXSW_CMD_MBOX_SIZE);
}
