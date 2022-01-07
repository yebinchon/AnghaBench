
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_atcam_region {int dummy; } ;
struct mlxsw_sp_acl_atcam_lkey_id {int refcnt; } ;


 int mlxsw_sp_acl_atcam_lkey_id_destroy (struct mlxsw_sp_acl_atcam_region*,struct mlxsw_sp_acl_atcam_lkey_id*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

__attribute__((used)) static void
mlxsw_sp_acl_atcam_12kb_lkey_id_put(struct mlxsw_sp_acl_atcam_region *aregion,
        struct mlxsw_sp_acl_atcam_lkey_id *lkey_id)
{
 if (refcount_dec_and_test(&lkey_id->refcnt))
  mlxsw_sp_acl_atcam_lkey_id_destroy(aregion, lkey_id);
}
