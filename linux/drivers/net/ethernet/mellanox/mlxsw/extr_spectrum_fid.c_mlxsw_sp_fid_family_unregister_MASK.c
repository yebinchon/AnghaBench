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
struct mlxsw_sp_fid_family {size_t type; int /*<<< orphan*/  fids_list; int /*<<< orphan*/  fids_bitmap; } ;
struct mlxsw_sp {TYPE_1__* fid_core; } ;
struct TYPE_2__ {int /*<<< orphan*/ ** fid_family_arr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp_fid_family*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct mlxsw_sp *mlxsw_sp,
			       struct mlxsw_sp_fid_family *fid_family)
{
	mlxsw_sp->fid_core->fid_family_arr[fid_family->type] = NULL;
	FUNC1(fid_family->fids_bitmap);
	FUNC0(!FUNC3(&fid_family->fids_list));
	FUNC2(fid_family);
}