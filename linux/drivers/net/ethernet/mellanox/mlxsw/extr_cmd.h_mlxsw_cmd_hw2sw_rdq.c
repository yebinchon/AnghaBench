
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlxsw_core {int dummy; } ;


 int MLXSW_CMD_OPCODE_MOD_RDQ ;
 int __mlxsw_cmd_hw2sw_dq (struct mlxsw_core*,int ,int ) ;

__attribute__((used)) static inline int mlxsw_cmd_hw2sw_rdq(struct mlxsw_core *mlxsw_core,
          u32 dq_number)
{
 return __mlxsw_cmd_hw2sw_dq(mlxsw_core, dq_number,
        MLXSW_CMD_OPCODE_MOD_RDQ);
}
