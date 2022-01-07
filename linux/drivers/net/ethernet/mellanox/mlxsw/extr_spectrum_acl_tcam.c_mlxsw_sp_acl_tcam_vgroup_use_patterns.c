
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_afk_element_usage {int dummy; } ;
struct mlxsw_sp_acl_tcam_vgroup {int patterns_count; struct mlxsw_sp_acl_tcam_pattern* patterns; struct mlxsw_afk_element_usage tmplt_elusage; scalar_t__ tmplt_elusage_set; } ;
struct mlxsw_sp_acl_tcam_pattern {int elements_count; int elements; } ;


 int WARN_ON (int) ;
 int memcpy (struct mlxsw_afk_element_usage*,struct mlxsw_afk_element_usage*,int) ;
 int mlxsw_afk_element_usage_fill (struct mlxsw_afk_element_usage*,int ,int ) ;
 scalar_t__ mlxsw_afk_element_usage_subset (struct mlxsw_afk_element_usage*,struct mlxsw_afk_element_usage*) ;

__attribute__((used)) static void
mlxsw_sp_acl_tcam_vgroup_use_patterns(struct mlxsw_sp_acl_tcam_vgroup *vgroup,
          struct mlxsw_afk_element_usage *elusage,
          struct mlxsw_afk_element_usage *out)
{
 const struct mlxsw_sp_acl_tcam_pattern *pattern;
 int i;




 if (vgroup->tmplt_elusage_set) {
  memcpy(out, &vgroup->tmplt_elusage, sizeof(*out));
  WARN_ON(!mlxsw_afk_element_usage_subset(elusage, out));
  return;
 }

 for (i = 0; i < vgroup->patterns_count; i++) {
  pattern = &vgroup->patterns[i];
  mlxsw_afk_element_usage_fill(out, pattern->elements,
          pattern->elements_count);
  if (mlxsw_afk_element_usage_subset(elusage, out))
   return;
 }
 memcpy(out, elusage, sizeof(*out));
}
