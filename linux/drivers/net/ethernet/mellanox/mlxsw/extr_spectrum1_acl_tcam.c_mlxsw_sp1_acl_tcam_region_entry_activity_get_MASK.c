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
struct mlxsw_sp_acl_tcam_region {int /*<<< orphan*/  tcam_region_info; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_PTCE2_LEN ; 
 int /*<<< orphan*/  MLXSW_REG_PTCE2_OP_QUERY_CLEAR_ON_READ ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ptce2 ; 

__attribute__((used)) static int
FUNC4(struct mlxsw_sp *mlxsw_sp,
					     struct mlxsw_sp_acl_tcam_region *_region,
					     unsigned int offset,
					     bool *activity)
{
	char ptce2_pl[MLXSW_REG_PTCE2_LEN];
	int err;

	FUNC2(ptce2_pl, true, MLXSW_REG_PTCE2_OP_QUERY_CLEAR_ON_READ,
			     _region->tcam_region_info, offset, 0);
	err = FUNC3(mlxsw_sp->core, FUNC0(ptce2), ptce2_pl);
	if (err)
		return err;
	*activity = FUNC1(ptce2_pl);
	return 0;
}