
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_acl_atcam_region {TYPE_1__* region; } ;
struct mlxsw_sp {int core; } ;
struct TYPE_2__ {int id; struct mlxsw_sp* mlxsw_sp; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_PERERP_LEN ;
 int mlxsw_reg_pererp_pack (char*,int ,int,int,int ,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int pererp ;

__attribute__((used)) static int
mlxsw_sp_acl_erp_region_param_init(struct mlxsw_sp_acl_atcam_region *aregion)
{
 struct mlxsw_sp *mlxsw_sp = aregion->region->mlxsw_sp;
 char pererp_pl[MLXSW_REG_PERERP_LEN];

 mlxsw_reg_pererp_pack(pererp_pl, aregion->region->id, 0, 0, 0,
         0, 0);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(pererp), pererp_pl);
}
