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
struct mlxsw_sp {TYPE_1__* nve; int /*<<< orphan*/  core; } ;
struct TYPE_2__ {unsigned int* num_max_mc_entries; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  MAX_NVE_MC_ENTRIES_IPV4 ; 
 int /*<<< orphan*/  MAX_NVE_MC_ENTRIES_IPV6 ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t MLXSW_SP_L3_PROTO_IPV4 ; 
 size_t MLXSW_SP_L3_PROTO_IPV6 ; 

__attribute__((used)) static int FUNC2(struct mlxsw_sp *mlxsw_sp)
{
	unsigned int max;

	if (!FUNC1(mlxsw_sp->core, MAX_NVE_MC_ENTRIES_IPV4) ||
	    !FUNC1(mlxsw_sp->core, MAX_NVE_MC_ENTRIES_IPV6))
		return -EIO;
	max = FUNC0(mlxsw_sp->core, MAX_NVE_MC_ENTRIES_IPV4);
	mlxsw_sp->nve->num_max_mc_entries[MLXSW_SP_L3_PROTO_IPV4] = max;
	max = FUNC0(mlxsw_sp->core, MAX_NVE_MC_ENTRIES_IPV6);
	mlxsw_sp->nve->num_max_mc_entries[MLXSW_SP_L3_PROTO_IPV6] = max;

	return 0;
}