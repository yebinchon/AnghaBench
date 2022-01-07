
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_acl_erp_table {scalar_t__ num_ctcam_erps; scalar_t__ num_deltas; int num_atcam_erps; int * ops; int base_index; TYPE_1__* aregion; int num_max_atcam_erps; int erp_core; } ;
struct TYPE_2__ {int type; } ;


 int erp_no_mask_ops ;
 int erp_single_mask_ops ;
 int erp_two_masks_ops ;
 int mlxsw_sp_acl_erp_region_master_mask_trans (struct mlxsw_sp_acl_erp_table*) ;
 int mlxsw_sp_acl_erp_table_disable (struct mlxsw_sp_acl_erp_table*) ;
 int mlxsw_sp_acl_erp_table_free (int ,int ,int ,int ) ;

__attribute__((used)) static void
__mlxsw_sp_acl_erp_table_other_dec(struct mlxsw_sp_acl_erp_table *erp_table,
       unsigned int *dec_num)
{
 (*dec_num)--;





 if (erp_table->num_ctcam_erps > 0 || erp_table->num_deltas > 0)
  return;

 switch (erp_table->num_atcam_erps) {
 case 2:




  erp_table->ops = &erp_two_masks_ops;
  break;
 case 1:





  mlxsw_sp_acl_erp_region_master_mask_trans(erp_table);
  erp_table->ops = &erp_single_mask_ops;
  break;
 case 0:



  mlxsw_sp_acl_erp_table_disable(erp_table);
  mlxsw_sp_acl_erp_table_free(erp_table->erp_core,
         erp_table->num_max_atcam_erps,
         erp_table->aregion->type,
         erp_table->base_index);
  erp_table->ops = &erp_no_mask_ops;
  break;
 default:
  break;
 }
}
