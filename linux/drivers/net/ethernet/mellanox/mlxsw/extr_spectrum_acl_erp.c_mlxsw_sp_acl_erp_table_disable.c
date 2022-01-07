
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlxsw_sp_acl_tcam_region {int id; } ;
struct mlxsw_sp_acl_erp_table {TYPE_2__* erp_core; TYPE_1__* aregion; } ;
struct mlxsw_sp_acl_erp {int id; } ;
struct mlxsw_sp {int core; } ;
struct TYPE_4__ {struct mlxsw_sp* mlxsw_sp; } ;
struct TYPE_3__ {struct mlxsw_sp_acl_tcam_region* region; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_PERERP_LEN ;
 int mlxsw_reg_pererp_pack (char*,int ,int,int,int ,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 struct mlxsw_sp_acl_erp* mlxsw_sp_acl_erp_table_master_rp (struct mlxsw_sp_acl_erp_table*) ;
 int pererp ;

__attribute__((used)) static void
mlxsw_sp_acl_erp_table_disable(struct mlxsw_sp_acl_erp_table *erp_table)
{
 struct mlxsw_sp_acl_tcam_region *region = erp_table->aregion->region;
 struct mlxsw_sp *mlxsw_sp = erp_table->erp_core->mlxsw_sp;
 char pererp_pl[MLXSW_REG_PERERP_LEN];
 struct mlxsw_sp_acl_erp *master_rp;

 master_rp = mlxsw_sp_acl_erp_table_master_rp(erp_table);




 mlxsw_reg_pererp_pack(pererp_pl, region->id, 0, 0, 0, 0,
         master_rp ? master_rp->id : 0);
 mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(pererp), pererp_pl);
}
