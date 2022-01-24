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
struct mlxsw_sp_fid_family {int /*<<< orphan*/  fids_bitmap; scalar_t__ start_index; TYPE_2__* ops; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp_fid {scalar_t__ ref_count; scalar_t__ fid_index; struct mlxsw_sp_fid_family* fid_family; int /*<<< orphan*/  ht_node; int /*<<< orphan*/  list; } ;
struct mlxsw_sp {TYPE_1__* fid_core; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* deconfigure ) (struct mlxsw_sp_fid*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  fid_ht; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp_fid*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mlxsw_sp_fid_ht_params ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp_fid*) ; 

void FUNC5(struct mlxsw_sp_fid *fid)
{
	struct mlxsw_sp_fid_family *fid_family = fid->fid_family;
	struct mlxsw_sp *mlxsw_sp = fid_family->mlxsw_sp;

	if (--fid->ref_count != 0)
		return;

	FUNC2(&fid->list);
	FUNC3(&mlxsw_sp->fid_core->fid_ht,
			       &fid->ht_node, mlxsw_sp_fid_ht_params);
	fid->fid_family->ops->deconfigure(fid);
	FUNC0(fid->fid_index - fid_family->start_index,
		    fid_family->fids_bitmap);
	FUNC1(fid);
}