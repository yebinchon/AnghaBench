
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlxsw_sp_acl {int tcam; } ;
struct mlxsw_sp {struct mlxsw_sp_acl* acl; } ;


 int mlxsw_sp_acl_tcam_vregion_rehash_intrvl_get (struct mlxsw_sp*,int *) ;

u32 mlxsw_sp_acl_region_rehash_intrvl_get(struct mlxsw_sp *mlxsw_sp)
{
 struct mlxsw_sp_acl *acl = mlxsw_sp->acl;

 return mlxsw_sp_acl_tcam_vregion_rehash_intrvl_get(mlxsw_sp,
          &acl->tcam);
}
