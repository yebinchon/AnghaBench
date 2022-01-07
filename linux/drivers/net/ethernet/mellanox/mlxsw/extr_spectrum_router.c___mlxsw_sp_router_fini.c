
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_RGCR_LEN ;
 int mlxsw_reg_rgcr_pack (char*,int,int) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int rgcr ;

__attribute__((used)) static void __mlxsw_sp_router_fini(struct mlxsw_sp *mlxsw_sp)
{
 char rgcr_pl[MLXSW_REG_RGCR_LEN];

 mlxsw_reg_rgcr_pack(rgcr_pl, 0, 0);
 mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(rgcr), rgcr_pl);
}
