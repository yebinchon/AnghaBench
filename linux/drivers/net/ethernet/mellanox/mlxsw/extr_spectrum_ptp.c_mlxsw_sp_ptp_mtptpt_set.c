
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_sp {int core; } ;
typedef enum mlxsw_reg_mtptpt_trap_id { ____Placeholder_mlxsw_reg_mtptpt_trap_id } mlxsw_reg_mtptpt_trap_id ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_MTPTPT_LEN ;
 int mlxsw_reg_mtptptp_pack (char*,int,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int mtptpt ;

__attribute__((used)) static int mlxsw_sp_ptp_mtptpt_set(struct mlxsw_sp *mlxsw_sp,
       enum mlxsw_reg_mtptpt_trap_id trap_id,
       u16 message_type)
{
 char mtptpt_pl[MLXSW_REG_MTPTPT_LEN];

 mlxsw_reg_mtptptp_pack(mtptpt_pl, trap_id, message_type);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(mtptpt), mtptpt_pl);
}
