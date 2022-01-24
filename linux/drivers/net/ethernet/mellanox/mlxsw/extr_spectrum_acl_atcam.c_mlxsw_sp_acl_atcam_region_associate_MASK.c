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
typedef  int u64 ;
typedef  int u16 ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_MAX_REGIONS ; 
 int ENOBUFS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_PERAR_LEN ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  perar ; 

int FUNC4(struct mlxsw_sp *mlxsw_sp,
					u16 region_id)
{
	char perar_pl[MLXSW_REG_PERAR_LEN];
	/* For now, just assume that every region has 12 key blocks */
	u16 hw_region = region_id * 3;
	u64 max_regions;

	max_regions = FUNC0(mlxsw_sp->core, ACL_MAX_REGIONS);
	if (hw_region >= max_regions)
		return -ENOBUFS;

	FUNC2(perar_pl, region_id, hw_region);
	return FUNC3(mlxsw_sp->core, FUNC1(perar), perar_pl);
}