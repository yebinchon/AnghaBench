
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlxsw_core {int dummy; } ;


 int MLXSW_CMD_MBOX_SIZE ;
 int MLXSW_CMD_OPCODE_MAP_FA ;
 int mlxsw_cmd_exec_in (struct mlxsw_core*,int ,int ,int ,char*,int ) ;

__attribute__((used)) static inline int mlxsw_cmd_map_fa(struct mlxsw_core *mlxsw_core,
       char *in_mbox, u32 vpm_entries_count)
{
 return mlxsw_cmd_exec_in(mlxsw_core, MLXSW_CMD_OPCODE_MAP_FA,
     0, vpm_entries_count,
     in_mbox, MLXSW_CMD_MBOX_SIZE);
}
