
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_tcam_vgroup {unsigned int patterns_count; int vregion_rehash_enabled; int tmplt_elusage_set; int group; int vchunk_ht; int vregion_list; int tmplt_elusage; struct mlxsw_sp_acl_tcam_pattern const* patterns; } ;
struct mlxsw_sp_acl_tcam_pattern {int dummy; } ;
struct mlxsw_sp_acl_tcam {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
struct mlxsw_afk_element_usage {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int memcpy (int *,struct mlxsw_afk_element_usage*,int) ;
 int mlxsw_sp_acl_tcam_group_add (struct mlxsw_sp_acl_tcam*,int *) ;
 int mlxsw_sp_acl_tcam_group_del (int *) ;
 int mlxsw_sp_acl_tcam_vchunk_ht_params ;
 int rhashtable_init (int *,int *) ;

__attribute__((used)) static int
mlxsw_sp_acl_tcam_vgroup_add(struct mlxsw_sp *mlxsw_sp,
        struct mlxsw_sp_acl_tcam *tcam,
        struct mlxsw_sp_acl_tcam_vgroup *vgroup,
        const struct mlxsw_sp_acl_tcam_pattern *patterns,
        unsigned int patterns_count,
        struct mlxsw_afk_element_usage *tmplt_elusage,
        bool vregion_rehash_enabled)
{
 int err;

 vgroup->patterns = patterns;
 vgroup->patterns_count = patterns_count;
 vgroup->vregion_rehash_enabled = vregion_rehash_enabled;

 if (tmplt_elusage) {
  vgroup->tmplt_elusage_set = 1;
  memcpy(&vgroup->tmplt_elusage, tmplt_elusage,
         sizeof(vgroup->tmplt_elusage));
 }
 INIT_LIST_HEAD(&vgroup->vregion_list);

 err = mlxsw_sp_acl_tcam_group_add(tcam, &vgroup->group);
 if (err)
  return err;

 err = rhashtable_init(&vgroup->vchunk_ht,
         &mlxsw_sp_acl_tcam_vchunk_ht_params);
 if (err)
  goto err_rhashtable_init;

 return 0;

err_rhashtable_init:
 mlxsw_sp_acl_tcam_group_del(&vgroup->group);
 return err;
}
