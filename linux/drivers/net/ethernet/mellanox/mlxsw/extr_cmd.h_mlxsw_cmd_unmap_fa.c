
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_core {int dummy; } ;


 int MLXSW_CMD_OPCODE_UNMAP_FA ;
 int mlxsw_cmd_exec_none (struct mlxsw_core*,int ,int ,int ) ;

__attribute__((used)) static inline int mlxsw_cmd_unmap_fa(struct mlxsw_core *mlxsw_core)
{
 return mlxsw_cmd_exec_none(mlxsw_core, MLXSW_CMD_OPCODE_UNMAP_FA, 0, 0);
}
