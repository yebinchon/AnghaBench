
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp1_mr_tcam_region {int rtar_key_type; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_RTAR_LEN ;
 int MLXSW_REG_RTAR_OP_DEALLOCATE ;
 int mlxsw_reg_rtar_pack (char*,int ,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int rtar ;

__attribute__((used)) static void
mlxsw_sp1_mr_tcam_region_free(struct mlxsw_sp1_mr_tcam_region *mr_tcam_region)
{
 struct mlxsw_sp *mlxsw_sp = mr_tcam_region->mlxsw_sp;
 char rtar_pl[MLXSW_REG_RTAR_LEN];

 mlxsw_reg_rtar_pack(rtar_pl, MLXSW_REG_RTAR_OP_DEALLOCATE,
       mr_tcam_region->rtar_key_type, 0);
 mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(rtar), rtar_pl);
}
