#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  dw; } ;
struct mlxsw_sp_acl_tcam_vregion {int ref_count; int /*<<< orphan*/  key_info; int /*<<< orphan*/  region; int /*<<< orphan*/  tlist; TYPE_2__ rehash; struct mlxsw_sp_acl_tcam_vgroup* vgroup; struct mlxsw_sp* mlxsw_sp; struct mlxsw_sp_acl_tcam* tcam; int /*<<< orphan*/  lock; int /*<<< orphan*/  vchunk_list; } ;
struct TYPE_3__ {struct mlxsw_sp_acl_tcam* tcam; } ;
struct mlxsw_sp_acl_tcam_vgroup {scalar_t__ vregion_rehash_enabled; TYPE_1__ group; } ;
struct mlxsw_sp_acl_tcam_ops {scalar_t__ region_rehash_hints_get; } ;
struct mlxsw_sp_acl_tcam {int /*<<< orphan*/  lock; int /*<<< orphan*/  vregion_list; } ;
struct mlxsw_sp {int /*<<< orphan*/  acl; struct mlxsw_sp_acl_tcam_ops* acl_tcam_ops; } ;
struct mlxsw_afk_element_usage {int dummy; } ;
struct mlxsw_afk {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct mlxsw_sp_acl_tcam_vregion* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp_acl_tcam_vregion*) ; 
 struct mlxsw_sp_acl_tcam_vregion* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct mlxsw_afk*,struct mlxsw_afk_element_usage*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct mlxsw_afk* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam*,struct mlxsw_sp_acl_tcam_vregion*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct mlxsw_sp*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_vgroup*,struct mlxsw_sp_acl_tcam_vregion*,unsigned int) ; 
 int /*<<< orphan*/  mlxsw_sp_acl_tcam_vregion_rehash_work ; 
 int /*<<< orphan*/  FUNC14 (struct mlxsw_sp_acl_tcam_vregion*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mlxsw_sp_acl_tcam_vregion *
FUNC18(struct mlxsw_sp *mlxsw_sp,
				 struct mlxsw_sp_acl_tcam_vgroup *vgroup,
				 unsigned int priority,
				 struct mlxsw_afk_element_usage *elusage)
{
	const struct mlxsw_sp_acl_tcam_ops *ops = mlxsw_sp->acl_tcam_ops;
	struct mlxsw_afk *afk = FUNC10(mlxsw_sp->acl);
	struct mlxsw_sp_acl_tcam *tcam = vgroup->group.tcam;
	struct mlxsw_sp_acl_tcam_vregion *vregion;
	int err;

	vregion = FUNC6(sizeof(*vregion), GFP_KERNEL);
	if (!vregion)
		return FUNC0(-ENOMEM);
	FUNC2(&vregion->vchunk_list);
	FUNC15(&vregion->lock);
	vregion->tcam = tcam;
	vregion->mlxsw_sp = mlxsw_sp;
	vregion->vgroup = vgroup;
	vregion->ref_count = 1;

	vregion->key_info = FUNC8(afk, elusage);
	if (FUNC3(vregion->key_info)) {
		err = FUNC4(vregion->key_info);
		goto err_key_info_get;
	}

	vregion->region = FUNC11(mlxsw_sp, tcam,
							  vregion, NULL);
	if (FUNC3(vregion->region)) {
		err = FUNC4(vregion->region);
		goto err_region_create;
	}

	err = FUNC13(mlxsw_sp, vgroup, vregion,
						      priority);
	if (err)
		goto err_vgroup_vregion_attach;

	if (vgroup->vregion_rehash_enabled && ops->region_rehash_hints_get) {
		/* Create the delayed work for vregion periodic rehash */
		FUNC1(&vregion->rehash.dw,
				  mlxsw_sp_acl_tcam_vregion_rehash_work);
		FUNC14(vregion);
		FUNC16(&tcam->lock);
		FUNC7(&vregion->tlist, &tcam->vregion_list);
		FUNC17(&tcam->lock);
	}

	return vregion;

err_vgroup_vregion_attach:
	FUNC12(mlxsw_sp, vregion->region);
err_region_create:
	FUNC9(vregion->key_info);
err_key_info_get:
	FUNC5(vregion);
	return FUNC0(err);
}