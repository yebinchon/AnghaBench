
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_tcam_vchunk {scalar_t__ ref_count; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_acl_tcam_vchunk_destroy (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_vchunk*) ;

__attribute__((used)) static void
mlxsw_sp_acl_tcam_vchunk_put(struct mlxsw_sp *mlxsw_sp,
        struct mlxsw_sp_acl_tcam_vchunk *vchunk)
{
 if (--vchunk->ref_count)
  return;
 mlxsw_sp_acl_tcam_vchunk_destroy(mlxsw_sp, vchunk);
}
