
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_RICNT_LEN ;
 int MLXSW_REG_RICNT_OPCODE_CLEAR ;
 int mlxsw_reg_ricnt_pack (char*,unsigned int,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int ricnt ;

__attribute__((used)) static int mlxsw_sp_rif_counter_clear(struct mlxsw_sp *mlxsw_sp,
          unsigned int counter_index)
{
 char ricnt_pl[MLXSW_REG_RICNT_LEN];

 mlxsw_reg_ricnt_pack(ricnt_pl, counter_index,
        MLXSW_REG_RICNT_OPCODE_CLEAR);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(ricnt), ricnt_pl);
}
