
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_acl_erp_table {int base_index; TYPE_1__* aregion; int num_max_atcam_erps; int erp_index_bitmap; struct mlxsw_sp_acl_erp_core* erp_core; } ;
struct mlxsw_sp_acl_erp_core {int dummy; } ;
struct mlxsw_sp_acl_erp {int index; } ;
struct TYPE_2__ {int type; } ;


 int __clear_bit (int ,int ) ;
 int mlxsw_acl_erp_table_bf_del (struct mlxsw_sp_acl_erp_table*,struct mlxsw_sp_acl_erp*) ;
 int mlxsw_sp_acl_erp_table_disable (struct mlxsw_sp_acl_erp_table*) ;
 int mlxsw_sp_acl_erp_table_erp_del (struct mlxsw_sp_acl_erp*) ;
 int mlxsw_sp_acl_erp_table_free (struct mlxsw_sp_acl_erp_core*,int ,int ,int ) ;
 struct mlxsw_sp_acl_erp* mlxsw_sp_acl_erp_table_master_rp (struct mlxsw_sp_acl_erp_table*) ;

__attribute__((used)) static void
mlxsw_sp_acl_erp_region_master_mask_trans(struct mlxsw_sp_acl_erp_table *erp_table)
{
 struct mlxsw_sp_acl_erp_core *erp_core = erp_table->erp_core;
 struct mlxsw_sp_acl_erp *master_rp;

 mlxsw_sp_acl_erp_table_disable(erp_table);
 master_rp = mlxsw_sp_acl_erp_table_master_rp(erp_table);
 if (!master_rp)
  return;
 mlxsw_acl_erp_table_bf_del(erp_table, master_rp);
 mlxsw_sp_acl_erp_table_erp_del(master_rp);
 __clear_bit(master_rp->index, erp_table->erp_index_bitmap);
 mlxsw_sp_acl_erp_table_free(erp_core, erp_table->num_max_atcam_erps,
        erp_table->aregion->type,
        erp_table->base_index);
}
