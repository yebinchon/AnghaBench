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
struct mlxsw_sp_acl_tcam_ventry {int /*<<< orphan*/  entry; int /*<<< orphan*/  list; struct mlxsw_sp_acl_tcam_vchunk* vchunk; } ;
struct mlxsw_sp_acl_tcam_vchunk {struct mlxsw_sp_acl_tcam_vregion* vregion; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp_acl_tcam_vchunk*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp*,struct mlxsw_sp_acl_tcam_vchunk*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct mlxsw_sp *mlxsw_sp,
					 struct mlxsw_sp_acl_tcam_ventry *ventry)
{
	struct mlxsw_sp_acl_tcam_vchunk *vchunk = ventry->vchunk;
	struct mlxsw_sp_acl_tcam_vregion *vregion = vchunk->vregion;

	FUNC4(&vregion->lock);
	FUNC2(vchunk);
	FUNC0(&ventry->list);
	FUNC1(mlxsw_sp, ventry->entry);
	FUNC5(&vregion->lock);
	FUNC3(mlxsw_sp, vchunk);
}