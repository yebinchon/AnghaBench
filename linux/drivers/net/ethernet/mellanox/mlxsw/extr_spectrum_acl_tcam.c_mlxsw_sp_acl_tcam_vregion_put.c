
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_tcam_vregion {scalar_t__ ref_count; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_acl_tcam_vregion_destroy (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_vregion*) ;

__attribute__((used)) static void
mlxsw_sp_acl_tcam_vregion_put(struct mlxsw_sp *mlxsw_sp,
         struct mlxsw_sp_acl_tcam_vregion *vregion)
{
 if (--vregion->ref_count)
  return;
 mlxsw_sp_acl_tcam_vregion_destroy(mlxsw_sp, vregion);
}
