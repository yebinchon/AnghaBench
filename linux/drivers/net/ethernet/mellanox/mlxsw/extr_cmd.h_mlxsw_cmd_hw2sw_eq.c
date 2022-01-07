
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlxsw_core {int dummy; } ;


 int MLXSW_CMD_OPCODE_HW2SW_EQ ;
 int mlxsw_cmd_exec_none (struct mlxsw_core*,int ,int ,int ) ;

__attribute__((used)) static inline int mlxsw_cmd_hw2sw_eq(struct mlxsw_core *mlxsw_core,
         u32 eq_number)
{
 return mlxsw_cmd_exec_none(mlxsw_core, MLXSW_CMD_OPCODE_HW2SW_EQ,
       0, eq_number);
}
