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
struct mlxsw_sp_acl_tcam_vregion {int /*<<< orphan*/  lock; int /*<<< orphan*/  vchunk_list; int /*<<< orphan*/  region; } ;
struct mlxsw_sp_acl_tcam_vgroup {int /*<<< orphan*/  vchunk_ht; } ;
struct mlxsw_sp_acl_tcam_vchunk {unsigned int priority; int ref_count; int /*<<< orphan*/  ht_node; int /*<<< orphan*/  list; struct mlxsw_sp_acl_tcam_vregion* chunk; struct mlxsw_sp_acl_tcam_vregion* vregion; struct mlxsw_sp_acl_tcam_vgroup* vgroup; int /*<<< orphan*/  ventry_list; } ;
struct mlxsw_sp {int dummy; } ;
struct mlxsw_afk_element_usage {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct mlxsw_sp_acl_tcam_vchunk* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct mlxsw_sp_acl_tcam_vregion*) ; 
 unsigned int MLXSW_SP_ACL_TCAM_CATCHALL_PRIO ; 
 int FUNC3 (struct mlxsw_sp_acl_tcam_vregion*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp_acl_tcam_vchunk*) ; 
 struct mlxsw_sp_acl_tcam_vchunk* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct mlxsw_sp_acl_tcam_vregion* FUNC7 (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_vchunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mlxsw_sp_acl_tcam_vregion*) ; 
 int /*<<< orphan*/  mlxsw_sp_acl_tcam_vchunk_ht_params ; 
 struct mlxsw_sp_acl_tcam_vregion* FUNC9 (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_vgroup*,unsigned int,struct mlxsw_afk_element_usage*) ; 
 int /*<<< orphan*/  FUNC10 (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_vregion*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mlxsw_sp_acl_tcam_vchunk *
FUNC15(struct mlxsw_sp *mlxsw_sp,
				struct mlxsw_sp_acl_tcam_vgroup *vgroup,
				unsigned int priority,
				struct mlxsw_afk_element_usage *elusage)
{
	struct mlxsw_sp_acl_tcam_vregion *vregion;
	struct mlxsw_sp_acl_tcam_vchunk *vchunk;
	int err;

	if (priority == MLXSW_SP_ACL_TCAM_CATCHALL_PRIO)
		return FUNC0(-EINVAL);

	vchunk = FUNC5(sizeof(*vchunk), GFP_KERNEL);
	if (!vchunk)
		return FUNC0(-ENOMEM);
	FUNC1(&vchunk->ventry_list);
	vchunk->priority = priority;
	vchunk->vgroup = vgroup;
	vchunk->ref_count = 1;

	vregion = FUNC9(mlxsw_sp, vgroup,
						priority, elusage);
	if (FUNC2(vregion)) {
		err = FUNC3(vregion);
		goto err_vregion_get;
	}

	vchunk->vregion = vregion;

	err = FUNC13(&vgroup->vchunk_ht, &vchunk->ht_node,
				     mlxsw_sp_acl_tcam_vchunk_ht_params);
	if (err)
		goto err_rhashtable_insert;

	FUNC11(&vregion->lock);
	vchunk->chunk = FUNC7(mlxsw_sp, vchunk,
						       vchunk->vregion->region);
	if (FUNC2(vchunk->chunk)) {
		FUNC12(&vregion->lock);
		err = FUNC3(vchunk->chunk);
		goto err_chunk_create;
	}

	FUNC8(vregion);
	FUNC6(&vchunk->list, &vregion->vchunk_list);
	FUNC12(&vregion->lock);

	return vchunk;

err_chunk_create:
	FUNC14(&vgroup->vchunk_ht, &vchunk->ht_node,
			       mlxsw_sp_acl_tcam_vchunk_ht_params);
err_rhashtable_insert:
	FUNC10(mlxsw_sp, vregion);
err_vregion_get:
	FUNC4(vchunk);
	return FUNC0(err);
}