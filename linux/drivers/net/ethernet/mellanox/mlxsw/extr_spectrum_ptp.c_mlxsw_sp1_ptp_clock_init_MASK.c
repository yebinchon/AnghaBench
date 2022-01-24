#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_3__ {int /*<<< orphan*/  mask; int /*<<< orphan*/  mult; int /*<<< orphan*/  shift; int /*<<< orphan*/  read; } ;
struct mlxsw_sp_ptp_clock {int /*<<< orphan*/  overflow_work; int /*<<< orphan*/  ptp; int /*<<< orphan*/  ptp_info; int /*<<< orphan*/  overflow_period; TYPE_1__ cycles; int /*<<< orphan*/  tc; int /*<<< orphan*/  core; int /*<<< orphan*/  nominal_c_mult; int /*<<< orphan*/  lock; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 struct mlxsw_sp_ptp_clock* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLXSW_SP1_PTP_CLOCK_CYCLES_SHIFT ; 
 int /*<<< orphan*/  MLXSW_SP1_PTP_CLOCK_FREQ_KHZ ; 
 int /*<<< orphan*/  MLXSW_SP1_PTP_CLOCK_MASK ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct mlxsw_sp_ptp_clock*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 struct mlxsw_sp_ptp_clock* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mlxsw_sp1_ptp_clock_info ; 
 int /*<<< orphan*/  mlxsw_sp1_ptp_clock_overflow ; 
 int /*<<< orphan*/  mlxsw_sp1_ptp_read_frc ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,struct device*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 

struct mlxsw_sp_ptp_clock *
FUNC21(struct mlxsw_sp *mlxsw_sp, struct device *dev)
{
	u64 overflow_cycles, nsec, frac = 0;
	struct mlxsw_sp_ptp_clock *clock;
	int err;

	clock = FUNC14(sizeof(*clock), GFP_KERNEL);
	if (!clock)
		return FUNC1(-ENOMEM);

	FUNC19(&clock->lock);
	clock->cycles.read = mlxsw_sp1_ptp_read_frc;
	clock->cycles.shift = MLXSW_SP1_PTP_CLOCK_CYCLES_SHIFT;
	clock->cycles.mult = FUNC6(MLXSW_SP1_PTP_CLOCK_FREQ_KHZ,
						  clock->cycles.shift);
	clock->nominal_c_mult = clock->cycles.mult;
	clock->cycles.mask = FUNC0(MLXSW_SP1_PTP_CLOCK_MASK);
	clock->core = mlxsw_sp->core;

	FUNC20(&clock->tc, &clock->cycles,
			 FUNC13(FUNC12()));

	/* Calculate period in seconds to call the overflow watchdog - to make
	 * sure counter is checked at least twice every wrap around.
	 * The period is calculated as the minimum between max HW cycles count
	 * (The clock source mask) and max amount of cycles that can be
	 * multiplied by clock multiplier where the result doesn't exceed
	 * 64bits.
	 */
	overflow_cycles = FUNC9(~0ULL >> 1, clock->cycles.mult);
	overflow_cycles = FUNC15(overflow_cycles, FUNC10(clock->cycles.mask, 3));

	nsec = FUNC7(&clock->cycles, overflow_cycles, 0, &frac);
	clock->overflow_period = FUNC17(nsec);

	FUNC2(&clock->overflow_work, mlxsw_sp1_ptp_clock_overflow);
	FUNC16(&clock->overflow_work, 0);

	clock->ptp_info = mlxsw_sp1_ptp_clock_info;
	clock->ptp = FUNC18(&clock->ptp_info, dev);
	if (FUNC3(clock->ptp)) {
		err = FUNC4(clock->ptp);
		FUNC8(dev, "ptp_clock_register failed %d\n", err);
		goto err_ptp_clock_register;
	}

	return clock;

err_ptp_clock_register:
	FUNC5(&clock->overflow_work);
	FUNC11(clock);
	return FUNC1(err);
}