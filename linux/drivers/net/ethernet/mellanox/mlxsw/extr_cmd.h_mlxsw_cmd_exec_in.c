
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct mlxsw_core {int dummy; } ;


 int mlxsw_cmd_exec (struct mlxsw_core*,int ,int ,int ,int,int,char*,size_t,int *,int ) ;

__attribute__((used)) static inline int mlxsw_cmd_exec_in(struct mlxsw_core *mlxsw_core, u16 opcode,
        u8 opcode_mod, u32 in_mod, char *in_mbox,
        size_t in_mbox_size)
{
 return mlxsw_cmd_exec(mlxsw_core, opcode, opcode_mod, in_mod, 0,
         0, in_mbox, in_mbox_size, ((void*)0), 0);
}
