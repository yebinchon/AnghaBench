
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_tcam_vregion {scalar_t__ region; scalar_t__ region2; int list; } ;
struct mlxsw_sp {int dummy; } ;


 int list_del (int *) ;
 int mlxsw_sp_acl_tcam_group_region_detach (struct mlxsw_sp*,scalar_t__) ;

__attribute__((used)) static void
mlxsw_sp_acl_tcam_vgroup_vregion_detach(struct mlxsw_sp *mlxsw_sp,
     struct mlxsw_sp_acl_tcam_vregion *vregion)
{
 list_del(&vregion->list);
 if (vregion->region2)
  mlxsw_sp_acl_tcam_group_region_detach(mlxsw_sp,
            vregion->region2);
 mlxsw_sp_acl_tcam_group_region_detach(mlxsw_sp, vregion->region);
}
