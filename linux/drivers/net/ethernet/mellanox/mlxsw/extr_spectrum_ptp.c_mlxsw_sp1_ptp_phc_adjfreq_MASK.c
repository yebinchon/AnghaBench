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
struct mlxsw_sp_ptp_clock {struct mlxsw_core* core; } ;
struct mlxsw_core {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_MTUTC_LEN ; 
 int /*<<< orphan*/  MLXSW_REG_MTUTC_OPERATION_ADJUST_FREQ ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlxsw_core*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  mtutc ; 

__attribute__((used)) static int
FUNC3(struct mlxsw_sp_ptp_clock *clock, int freq_adj)
{
	struct mlxsw_core *mlxsw_core = clock->core;
	char mtutc_pl[MLXSW_REG_MTUTC_LEN];

	FUNC1(mtutc_pl, MLXSW_REG_MTUTC_OPERATION_ADJUST_FREQ,
			     freq_adj, 0);
	return FUNC2(mlxsw_core, FUNC0(mtutc), mtutc_pl);
}