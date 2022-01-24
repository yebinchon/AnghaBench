#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mlxsw_sp_acl_tcam_vgroup {unsigned int patterns_count; int vregion_rehash_enabled; int tmplt_elusage_set; int /*<<< orphan*/  group; int /*<<< orphan*/  vchunk_ht; int /*<<< orphan*/  vregion_list; int /*<<< orphan*/  tmplt_elusage; struct mlxsw_sp_acl_tcam_pattern const* patterns; } ;
struct mlxsw_sp_acl_tcam_pattern {int dummy; } ;
struct mlxsw_sp_acl_tcam {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
struct mlxsw_afk_element_usage {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mlxsw_afk_element_usage*,int) ; 
 int FUNC2 (struct mlxsw_sp_acl_tcam*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mlxsw_sp_acl_tcam_vchunk_ht_params ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct mlxsw_sp *mlxsw_sp,
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
		vgroup->tmplt_elusage_set = true;
		FUNC1(&vgroup->tmplt_elusage, tmplt_elusage,
		       sizeof(vgroup->tmplt_elusage));
	}
	FUNC0(&vgroup->vregion_list);

	err = FUNC2(tcam, &vgroup->group);
	if (err)
		return err;

	err = FUNC4(&vgroup->vchunk_ht,
			      &mlxsw_sp_acl_tcam_vchunk_ht_params);
	if (err)
		goto err_rhashtable_init;

	return 0;

err_rhashtable_init:
	FUNC3(&vgroup->group);
	return err;
}