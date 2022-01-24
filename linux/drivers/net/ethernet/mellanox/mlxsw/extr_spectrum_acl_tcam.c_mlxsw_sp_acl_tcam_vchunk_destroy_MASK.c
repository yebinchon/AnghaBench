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
struct mlxsw_sp_acl_tcam_vregion {int /*<<< orphan*/  lock; } ;
struct mlxsw_sp_acl_tcam_vgroup {int /*<<< orphan*/  vchunk_ht; } ;
struct mlxsw_sp_acl_tcam_vchunk {struct mlxsw_sp_acl_tcam_vregion* vregion; int /*<<< orphan*/  ht_node; scalar_t__ chunk; scalar_t__ chunk2; int /*<<< orphan*/  list; struct mlxsw_sp_acl_tcam_vgroup* vgroup; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlxsw_sp_acl_tcam_vchunk*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp_acl_tcam_vregion*) ; 
 int /*<<< orphan*/  mlxsw_sp_acl_tcam_vchunk_ht_params ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_vregion*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct mlxsw_sp *mlxsw_sp,
				 struct mlxsw_sp_acl_tcam_vchunk *vchunk)
{
	struct mlxsw_sp_acl_tcam_vregion *vregion = vchunk->vregion;
	struct mlxsw_sp_acl_tcam_vgroup *vgroup = vchunk->vgroup;

	FUNC5(&vregion->lock);
	FUNC3(vregion);
	FUNC1(&vchunk->list);
	if (vchunk->chunk2)
		FUNC2(mlxsw_sp, vchunk->chunk2);
	FUNC2(mlxsw_sp, vchunk->chunk);
	FUNC6(&vregion->lock);
	FUNC7(&vgroup->vchunk_ht, &vchunk->ht_node,
			       mlxsw_sp_acl_tcam_vchunk_ht_params);
	FUNC4(mlxsw_sp, vchunk->vregion);
	FUNC0(vchunk);
}