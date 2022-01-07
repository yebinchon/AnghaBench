
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp1_mr_tcam_region {int parman; int * parman_prios; } ;


 int MLXSW_SP_MR_ROUTE_PRIO_MAX ;
 int kfree (int *) ;
 int mlxsw_sp1_mr_tcam_region_free (struct mlxsw_sp1_mr_tcam_region*) ;
 int parman_destroy (int ) ;
 int parman_prio_fini (int *) ;

__attribute__((used)) static void
mlxsw_sp1_mr_tcam_region_fini(struct mlxsw_sp1_mr_tcam_region *mr_tcam_region)
{
 int i;

 for (i = 0; i < MLXSW_SP_MR_ROUTE_PRIO_MAX + 1; i++)
  parman_prio_fini(&mr_tcam_region->parman_prios[i]);
 kfree(mr_tcam_region->parman_prios);
 parman_destroy(mr_tcam_region->parman);
 mlxsw_sp1_mr_tcam_region_free(mr_tcam_region);
}
