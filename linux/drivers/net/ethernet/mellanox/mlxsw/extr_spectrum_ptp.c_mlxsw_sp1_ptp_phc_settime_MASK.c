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
struct mlxsw_sp_ptp_clock {int /*<<< orphan*/  lock; int /*<<< orphan*/  tc; struct mlxsw_core* core; } ;
struct mlxsw_core {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_MTPPS_LEN ; 
 int MLXSW_REG_MTUTC_LEN ; 
 int /*<<< orphan*/  MLXSW_REG_MTUTC_OPERATION_SET_TIME_AT_NEXT_SEC ; 
 int NSEC_PER_SEC ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct mlxsw_core*,int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  mtpps ; 
 int /*<<< orphan*/  mtutc ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct mlxsw_sp_ptp_clock *clock, u64 nsec)
{
	struct mlxsw_core *mlxsw_core = clock->core;
	u64 next_sec, next_sec_in_nsec, cycles;
	char mtutc_pl[MLXSW_REG_MTUTC_LEN];
	char mtpps_pl[MLXSW_REG_MTPPS_LEN];
	int err;

	next_sec = FUNC1(nsec, NSEC_PER_SEC) + 1;
	next_sec_in_nsec = next_sec * NSEC_PER_SEC;

	FUNC6(&clock->lock);
	cycles = FUNC5(&clock->tc, next_sec_in_nsec);
	FUNC7(&clock->lock);

	FUNC2(mtpps_pl, cycles);
	err = FUNC4(mlxsw_core, FUNC0(mtpps), mtpps_pl);
	if (err)
		return err;

	FUNC3(mtutc_pl,
			     MLXSW_REG_MTUTC_OPERATION_SET_TIME_AT_NEXT_SEC,
			     0, next_sec);
	return FUNC4(mlxsw_core, FUNC0(mtutc), mtutc_pl);
}