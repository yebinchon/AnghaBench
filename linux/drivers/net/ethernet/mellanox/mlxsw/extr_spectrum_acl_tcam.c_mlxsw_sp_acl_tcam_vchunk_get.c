
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_acl_tcam_vgroup {int vchunk_ht; } ;
struct mlxsw_sp_acl_tcam_vchunk {int ref_count; TYPE_1__* vregion; } ;
struct mlxsw_sp {int dummy; } ;
struct mlxsw_afk_element_usage {int dummy; } ;
struct TYPE_2__ {int key_info; } ;


 int EINVAL ;
 struct mlxsw_sp_acl_tcam_vchunk* ERR_PTR (int ) ;
 scalar_t__ WARN_ON (int) ;
 int mlxsw_afk_key_info_subset (int ,struct mlxsw_afk_element_usage*) ;
 struct mlxsw_sp_acl_tcam_vchunk* mlxsw_sp_acl_tcam_vchunk_create (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_vgroup*,unsigned int,struct mlxsw_afk_element_usage*) ;
 int mlxsw_sp_acl_tcam_vchunk_ht_params ;
 struct mlxsw_sp_acl_tcam_vchunk* rhashtable_lookup_fast (int *,unsigned int*,int ) ;

__attribute__((used)) static struct mlxsw_sp_acl_tcam_vchunk *
mlxsw_sp_acl_tcam_vchunk_get(struct mlxsw_sp *mlxsw_sp,
        struct mlxsw_sp_acl_tcam_vgroup *vgroup,
        unsigned int priority,
        struct mlxsw_afk_element_usage *elusage)
{
 struct mlxsw_sp_acl_tcam_vchunk *vchunk;

 vchunk = rhashtable_lookup_fast(&vgroup->vchunk_ht, &priority,
     mlxsw_sp_acl_tcam_vchunk_ht_params);
 if (vchunk) {
  if (WARN_ON(!mlxsw_afk_key_info_subset(vchunk->vregion->key_info,
             elusage)))
   return ERR_PTR(-EINVAL);
  vchunk->ref_count++;
  return vchunk;
 }
 return mlxsw_sp_acl_tcam_vchunk_create(mlxsw_sp, vgroup,
            priority, elusage);
}
