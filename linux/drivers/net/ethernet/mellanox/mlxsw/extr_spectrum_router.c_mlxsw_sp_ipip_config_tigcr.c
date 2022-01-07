
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_TIGCR_LEN ;
 int mlxsw_reg_tigcr_pack (char*,int,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int tigcr ;

__attribute__((used)) static int
mlxsw_sp_ipip_config_tigcr(struct mlxsw_sp *mlxsw_sp)
{
 char tigcr_pl[MLXSW_REG_TIGCR_LEN];

 mlxsw_reg_tigcr_pack(tigcr_pl, 1, 0);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(tigcr), tigcr_pl);
}
