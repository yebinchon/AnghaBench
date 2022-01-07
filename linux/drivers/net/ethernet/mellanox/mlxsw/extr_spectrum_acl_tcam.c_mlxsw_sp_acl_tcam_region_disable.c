
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_tcam_region {int tcam_region_info; int id; } ;
struct mlxsw_sp {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_PACL_LEN ;
 int mlxsw_reg_pacl_pack (char*,int ,int,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int pacl ;

__attribute__((used)) static void
mlxsw_sp_acl_tcam_region_disable(struct mlxsw_sp *mlxsw_sp,
     struct mlxsw_sp_acl_tcam_region *region)
{
 char pacl_pl[MLXSW_REG_PACL_LEN];

 mlxsw_reg_pacl_pack(pacl_pl, region->id, 0,
       region->tcam_region_info);
 mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(pacl), pacl_pl);
}
