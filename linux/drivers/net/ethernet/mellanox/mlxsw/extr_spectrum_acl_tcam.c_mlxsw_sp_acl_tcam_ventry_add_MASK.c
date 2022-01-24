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
struct mlxsw_sp_acl_tcam_vregion {int /*<<< orphan*/  lock; } ;
struct mlxsw_sp_acl_tcam_vgroup {int dummy; } ;
struct mlxsw_sp_acl_tcam_ventry {int /*<<< orphan*/  list; struct mlxsw_sp_acl_tcam_vchunk* entry; struct mlxsw_sp_acl_rule_info* rulei; struct mlxsw_sp_acl_tcam_vchunk* vchunk; } ;
struct mlxsw_sp_acl_tcam_vchunk {int /*<<< orphan*/  ventry_list; int /*<<< orphan*/  chunk; struct mlxsw_sp_acl_tcam_vregion* vregion; } ;
struct TYPE_2__ {int /*<<< orphan*/  elusage; } ;
struct mlxsw_sp_acl_rule_info {TYPE_1__ values; int /*<<< orphan*/  priority; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlxsw_sp_acl_tcam_vchunk*) ; 
 int FUNC1 (struct mlxsw_sp_acl_tcam_vchunk*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct mlxsw_sp_acl_tcam_vchunk* FUNC3 (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_ventry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp_acl_tcam_vchunk*) ; 
 struct mlxsw_sp_acl_tcam_vchunk* FUNC5 (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_vgroup*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_vchunk*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct mlxsw_sp *mlxsw_sp,
					struct mlxsw_sp_acl_tcam_vgroup *vgroup,
					struct mlxsw_sp_acl_tcam_ventry *ventry,
					struct mlxsw_sp_acl_rule_info *rulei)
{
	struct mlxsw_sp_acl_tcam_vregion *vregion;
	struct mlxsw_sp_acl_tcam_vchunk *vchunk;
	int err;

	vchunk = FUNC5(mlxsw_sp, vgroup, rulei->priority,
					      &rulei->values.elusage);
	if (FUNC0(vchunk))
		return FUNC1(vchunk);

	ventry->vchunk = vchunk;
	ventry->rulei = rulei;
	vregion = vchunk->vregion;

	FUNC7(&vregion->lock);
	ventry->entry = FUNC3(mlxsw_sp, ventry,
						       vchunk->chunk);
	if (FUNC0(ventry->entry)) {
		FUNC8(&vregion->lock);
		err = FUNC1(ventry->entry);
		goto err_entry_create;
	}

	FUNC2(&ventry->list, &vchunk->ventry_list);
	FUNC4(vchunk);
	FUNC8(&vregion->lock);

	return 0;

err_entry_create:
	FUNC6(mlxsw_sp, vchunk);
	return err;
}