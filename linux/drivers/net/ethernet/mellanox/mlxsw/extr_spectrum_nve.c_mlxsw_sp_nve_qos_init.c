
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_TNQCR_LEN ;
 int mlxsw_reg_tnqcr_pack (char*) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int tnqcr ;

__attribute__((used)) static int mlxsw_sp_nve_qos_init(struct mlxsw_sp *mlxsw_sp)
{
 char tnqcr_pl[MLXSW_REG_TNQCR_LEN];

 mlxsw_reg_tnqcr_pack(tnqcr_pl);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(tnqcr), tnqcr_pl);
}
