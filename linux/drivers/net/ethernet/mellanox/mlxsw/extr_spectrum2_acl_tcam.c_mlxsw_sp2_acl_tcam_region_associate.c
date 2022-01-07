
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_tcam_region {int id; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_acl_atcam_region_associate (struct mlxsw_sp*,int ) ;

__attribute__((used)) static int
mlxsw_sp2_acl_tcam_region_associate(struct mlxsw_sp *mlxsw_sp,
        struct mlxsw_sp_acl_tcam_region *region)
{
 return mlxsw_sp_acl_atcam_region_associate(mlxsw_sp, region->id);
}
