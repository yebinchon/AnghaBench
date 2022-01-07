
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_tcam_region {int tcam_region_info; int id; int key_type; } ;
struct mlxsw_sp {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_PTAR_LEN ;
 int MLXSW_REG_PTAR_OP_FREE ;
 int mlxsw_reg_ptar_pack (char*,int ,int ,int ,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int ptar ;

__attribute__((used)) static void
mlxsw_sp_acl_tcam_region_free(struct mlxsw_sp *mlxsw_sp,
         struct mlxsw_sp_acl_tcam_region *region)
{
 char ptar_pl[MLXSW_REG_PTAR_LEN];

 mlxsw_reg_ptar_pack(ptar_pl, MLXSW_REG_PTAR_OP_FREE,
       region->key_type, 0, region->id,
       region->tcam_region_info);
 mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(ptar), ptar_pl);
}
