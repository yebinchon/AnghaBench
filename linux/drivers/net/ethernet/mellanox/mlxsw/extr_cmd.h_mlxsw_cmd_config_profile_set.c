
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_core {int dummy; } ;


 int MLXSW_CMD_MBOX_SIZE ;
 int MLXSW_CMD_OPCODE_CONFIG_PROFILE ;
 int mlxsw_cmd_exec_in (struct mlxsw_core*,int ,int,int ,char*,int ) ;

__attribute__((used)) static inline int mlxsw_cmd_config_profile_set(struct mlxsw_core *mlxsw_core,
            char *in_mbox)
{
 return mlxsw_cmd_exec_in(mlxsw_core, MLXSW_CMD_OPCODE_CONFIG_PROFILE,
     1, 0, in_mbox, MLXSW_CMD_MBOX_SIZE);
}
