
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlxsw_sp_acl_tcam_region {int id; } ;
struct mlxsw_sp_acl_erp_table {scalar_t__ num_ctcam_erps; int erp_index_bitmap; int base_index; TYPE_2__* erp_core; TYPE_1__* aregion; } ;
struct mlxsw_sp_acl_erp {int index; struct mlxsw_sp_acl_erp_table* erp_table; } ;
struct mlxsw_sp {int core; } ;
struct TYPE_4__ {struct mlxsw_sp* mlxsw_sp; } ;
struct TYPE_3__ {struct mlxsw_sp_acl_tcam_region* region; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_PERERP_LEN ;
 int MLXSW_SP_ACL_ERP_MAX_PER_REGION ;
 int mlxsw_reg_pererp_erp_vector_pack (char*,int ,int ) ;
 int mlxsw_reg_pererp_erpt_vector_set (char*,int ,int) ;
 int mlxsw_reg_pererp_pack (char*,int ,int,int,int ,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int pererp ;

__attribute__((used)) static void mlxsw_sp_acl_erp_region_erp_del(struct mlxsw_sp_acl_erp *erp)
{
 struct mlxsw_sp_acl_erp_table *erp_table = erp->erp_table;
 struct mlxsw_sp_acl_tcam_region *region = erp_table->aregion->region;
 struct mlxsw_sp *mlxsw_sp = erp_table->erp_core->mlxsw_sp;
 bool ctcam_le = erp_table->num_ctcam_erps > 0;
 char pererp_pl[MLXSW_REG_PERERP_LEN];

 mlxsw_reg_pererp_pack(pererp_pl, region->id, ctcam_le, 1, 0,
         erp_table->base_index, 0);
 mlxsw_reg_pererp_erp_vector_pack(pererp_pl, erp_table->erp_index_bitmap,
      MLXSW_SP_ACL_ERP_MAX_PER_REGION);
 mlxsw_reg_pererp_erpt_vector_set(pererp_pl, erp->index, 0);

 mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(pererp), pererp_pl);
}
