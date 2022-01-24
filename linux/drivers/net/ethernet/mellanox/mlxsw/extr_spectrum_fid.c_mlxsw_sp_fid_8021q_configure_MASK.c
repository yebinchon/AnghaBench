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
struct mlxsw_sp_fid_8021q {int /*<<< orphan*/  vid; } ;
struct mlxsw_sp_fid {int /*<<< orphan*/  fid_index; TYPE_1__* fid_family; } ;
struct mlxsw_sp {int dummy; } ;
struct TYPE_2__ {struct mlxsw_sp* mlxsw_sp; } ;

/* Variables and functions */
 struct mlxsw_sp_fid_8021q* FUNC0 (struct mlxsw_sp_fid*) ; 
 int FUNC1 (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct mlxsw_sp_fid *fid)
{
	struct mlxsw_sp *mlxsw_sp = fid->fid_family->mlxsw_sp;
	struct mlxsw_sp_fid_8021q *fid_8021q;
	int err;

	err = FUNC1(mlxsw_sp, fid->fid_index, fid->fid_index, true);
	if (err)
		return err;

	fid_8021q = FUNC0(fid);
	err = FUNC2(mlxsw_sp, fid->fid_index, fid_8021q->vid,
				   true);
	if (err)
		goto err_fid_map;

	return 0;

err_fid_map:
	FUNC1(mlxsw_sp, fid->fid_index, 0, false);
	return err;
}