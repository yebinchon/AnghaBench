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
typedef  scalar_t__ u16 ;
struct mlxsw_sp_fid_family {size_t type; int /*<<< orphan*/  fids_bitmap; scalar_t__ flood_tables; int /*<<< orphan*/  fids_list; struct mlxsw_sp* mlxsw_sp; scalar_t__ start_index; scalar_t__ end_index; } ;
struct mlxsw_sp {TYPE_1__* fid_core; } ;
struct TYPE_2__ {struct mlxsw_sp_fid_family** fid_family_arr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp_fid_family*) ; 
 struct mlxsw_sp_fid_family* FUNC4 (struct mlxsw_sp_fid_family const*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mlxsw_sp_fid_family*) ; 

__attribute__((used)) static int FUNC6(struct mlxsw_sp *mlxsw_sp,
					const struct mlxsw_sp_fid_family *tmpl)
{
	u16 nr_fids = tmpl->end_index - tmpl->start_index + 1;
	struct mlxsw_sp_fid_family *fid_family;
	int err;

	fid_family = FUNC4(tmpl, sizeof(*fid_family), GFP_KERNEL);
	if (!fid_family)
		return -ENOMEM;

	fid_family->mlxsw_sp = mlxsw_sp;
	FUNC0(&fid_family->fids_list);
	fid_family->fids_bitmap = FUNC2(nr_fids, GFP_KERNEL);
	if (!fid_family->fids_bitmap) {
		err = -ENOMEM;
		goto err_alloc_fids_bitmap;
	}

	if (fid_family->flood_tables) {
		err = FUNC5(fid_family);
		if (err)
			goto err_fid_flood_tables_init;
	}

	mlxsw_sp->fid_core->fid_family_arr[tmpl->type] = fid_family;

	return 0;

err_fid_flood_tables_init:
	FUNC1(fid_family->fids_bitmap);
err_alloc_fids_bitmap:
	FUNC3(fid_family);
	return err;
}