
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_core {int dummy; } ;


 int MLXSW_CMD_MBOX_SIZE ;
 int MLXSW_CMD_OPCODE_ACCESS_REG ;
 int mlxsw_cmd_exec (struct mlxsw_core*,int ,int ,int ,int,int,char*,int ,char*,int ) ;

__attribute__((used)) static inline int mlxsw_cmd_access_reg(struct mlxsw_core *mlxsw_core,
           bool reset_ok,
           char *in_mbox, char *out_mbox)
{
 return mlxsw_cmd_exec(mlxsw_core, MLXSW_CMD_OPCODE_ACCESS_REG,
         0, 0, 0, reset_ok,
         in_mbox, MLXSW_CMD_MBOX_SIZE,
         out_mbox, MLXSW_CMD_MBOX_SIZE);
}
