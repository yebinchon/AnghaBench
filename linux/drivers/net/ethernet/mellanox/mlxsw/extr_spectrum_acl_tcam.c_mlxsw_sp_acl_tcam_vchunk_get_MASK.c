#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mlxsw_sp_acl_tcam_vgroup {int /*<<< orphan*/  vchunk_ht; } ;
struct mlxsw_sp_acl_tcam_vchunk {int /*<<< orphan*/  ref_count; TYPE_1__* vregion; } ;
struct mlxsw_sp {int dummy; } ;
struct mlxsw_afk_element_usage {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  key_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct mlxsw_sp_acl_tcam_vchunk* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct mlxsw_afk_element_usage*) ; 
 struct mlxsw_sp_acl_tcam_vchunk* FUNC3 (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_vgroup*,unsigned int,struct mlxsw_afk_element_usage*) ; 
 int /*<<< orphan*/  mlxsw_sp_acl_tcam_vchunk_ht_params ; 
 struct mlxsw_sp_acl_tcam_vchunk* FUNC4 (int /*<<< orphan*/ *,unsigned int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mlxsw_sp_acl_tcam_vchunk *
FUNC5(struct mlxsw_sp *mlxsw_sp,
			     struct mlxsw_sp_acl_tcam_vgroup *vgroup,
			     unsigned int priority,
			     struct mlxsw_afk_element_usage *elusage)
{
	struct mlxsw_sp_acl_tcam_vchunk *vchunk;

	vchunk = FUNC4(&vgroup->vchunk_ht, &priority,
					mlxsw_sp_acl_tcam_vchunk_ht_params);
	if (vchunk) {
		if (FUNC1(!FUNC2(vchunk->vregion->key_info,
						       elusage)))
			return FUNC0(-EINVAL);
		vchunk->ref_count++;
		return vchunk;
	}
	return FUNC3(mlxsw_sp, vgroup,
					       priority, elusage);
}