
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_TNGCR_LEN ;
 int MLXSW_REG_TNGCR_TYPE_VXLAN ;
 int mlxsw_reg_tngcr_pack (char*,int ,int,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int tngcr ;

__attribute__((used)) static void mlxsw_sp1_nve_vxlan_config_clear(struct mlxsw_sp *mlxsw_sp)
{
 char tngcr_pl[MLXSW_REG_TNGCR_LEN];

 mlxsw_reg_tngcr_pack(tngcr_pl, MLXSW_REG_TNGCR_TYPE_VXLAN, 0, 0);

 mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(tngcr), tngcr_pl);
}
