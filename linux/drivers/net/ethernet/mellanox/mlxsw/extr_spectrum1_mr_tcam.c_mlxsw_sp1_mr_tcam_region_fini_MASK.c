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
struct mlxsw_sp1_mr_tcam_region {int /*<<< orphan*/  parman; int /*<<< orphan*/ * parman_prios; } ;

/* Variables and functions */
 int MLXSW_SP_MR_ROUTE_PRIO_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp1_mr_tcam_region*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct mlxsw_sp1_mr_tcam_region *mr_tcam_region)
{
	int i;

	for (i = 0; i < MLXSW_SP_MR_ROUTE_PRIO_MAX + 1; i++)
		FUNC3(&mr_tcam_region->parman_prios[i]);
	FUNC0(mr_tcam_region->parman_prios);
	FUNC2(mr_tcam_region->parman);
	FUNC1(mr_tcam_region);
}