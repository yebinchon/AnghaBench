
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_acl_atcam_region {int entries_list; int entries_ht; TYPE_1__* ops; int cregion; } ;
struct TYPE_2__ {int (* fini ) (struct mlxsw_sp_acl_atcam_region*) ;} ;


 int WARN_ON (int) ;
 int list_empty (int *) ;
 int mlxsw_sp_acl_ctcam_region_fini (int *) ;
 int mlxsw_sp_acl_erp_region_fini (struct mlxsw_sp_acl_atcam_region*) ;
 int rhashtable_destroy (int *) ;
 int stub1 (struct mlxsw_sp_acl_atcam_region*) ;

void mlxsw_sp_acl_atcam_region_fini(struct mlxsw_sp_acl_atcam_region *aregion)
{
 mlxsw_sp_acl_ctcam_region_fini(&aregion->cregion);
 mlxsw_sp_acl_erp_region_fini(aregion);
 aregion->ops->fini(aregion);
 rhashtable_destroy(&aregion->entries_ht);
 WARN_ON(!list_empty(&aregion->entries_list));
}
