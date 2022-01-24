#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_ib_clock_info {scalar_t__ overflow_period; int /*<<< orphan*/  frac; int /*<<< orphan*/  shift; int /*<<< orphan*/  mult; int /*<<< orphan*/  mask; int /*<<< orphan*/  cycles; int /*<<< orphan*/  nsec; } ;
struct TYPE_12__ {scalar_t__ n_pins; } ;
struct TYPE_8__ {int /*<<< orphan*/  out_work; } ;
struct TYPE_10__ {int /*<<< orphan*/  frac; int /*<<< orphan*/  cycle_last; int /*<<< orphan*/  nsec; } ;
struct TYPE_11__ {int /*<<< orphan*/  shift; int /*<<< orphan*/  mask; int /*<<< orphan*/  mult; int /*<<< orphan*/  read; } ;
struct mlx5_clock {int /*<<< orphan*/  pps_nb; int /*<<< orphan*/ * ptp; TYPE_5__ ptp_info; int /*<<< orphan*/  overflow_work; scalar_t__ overflow_period; TYPE_1__ pps_info; TYPE_3__ tc; TYPE_4__ cycles; int /*<<< orphan*/  nominal_c_mult; struct mlx5_core_dev* mdev; int /*<<< orphan*/  lock; } ;
struct mlx5_core_dev {TYPE_2__* pdev; struct mlx5_ib_clock_info* clock_info; struct mlx5_clock clock; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_CYCLES_SHIFT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct mlx5_core_dev*) ; 
 int NSEC_PER_SEC ; 
 int /*<<< orphan*/  PPS_EVENT ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_4__*,scalar_t__,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  device_frequency_khz ; 
 scalar_t__ FUNC10 (unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct mlx5_core_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC18 (struct mlx5_core_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC20 (struct mlx5_clock*) ; 
 int /*<<< orphan*/  mlx5_pps_event ; 
 int /*<<< orphan*/  mlx5_pps_out ; 
 TYPE_5__ mlx5_ptp_clock_info ; 
 int /*<<< orphan*/  mlx5_timestamp_overflow ; 
 int /*<<< orphan*/ * FUNC21 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  read_internal_timer ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ ) ; 

void FUNC25(struct mlx5_core_dev *mdev)
{
	struct mlx5_clock *clock = &mdev->clock;
	u64 overflow_cycles;
	u64 ns;
	u64 frac = 0;
	u32 dev_freq;

	dev_freq = FUNC4(mdev, device_frequency_khz);
	if (!dev_freq) {
		FUNC17(mdev, "invalid device_frequency_khz, aborting HW clock init\n");
		return;
	}
	FUNC23(&clock->lock);
	clock->cycles.read = read_internal_timer;
	clock->cycles.shift = MLX5_CYCLES_SHIFT;
	clock->cycles.mult = FUNC8(dev_freq,
						  clock->cycles.shift);
	clock->nominal_c_mult = clock->cycles.mult;
	clock->cycles.mask = FUNC0(41);
	clock->mdev = mdev;

	FUNC24(&clock->tc, &clock->cycles,
			 FUNC15(FUNC14()));

	/* Calculate period in seconds to call the overflow watchdog - to make
	 * sure counter is checked at least twice every wrap around.
	 * The period is calculated as the minimum between max HW cycles count
	 * (The clock source mask) and max amount of cycles that can be
	 * multiplied by clock multiplier where the result doesn't exceed
	 * 64bits.
	 */
	overflow_cycles = FUNC10(~0ULL >> 1, clock->cycles.mult);
	overflow_cycles = FUNC16(overflow_cycles, FUNC11(clock->cycles.mask, 3));

	ns = FUNC9(&clock->cycles, overflow_cycles,
				 frac, &frac);
	FUNC12(ns, NSEC_PER_SEC / HZ);
	clock->overflow_period = ns;

	mdev->clock_info =
		(struct mlx5_ib_clock_info *)FUNC13(GFP_KERNEL);
	if (mdev->clock_info) {
		mdev->clock_info->nsec = clock->tc.nsec;
		mdev->clock_info->cycles = clock->tc.cycle_last;
		mdev->clock_info->mask = clock->cycles.mask;
		mdev->clock_info->mult = clock->nominal_c_mult;
		mdev->clock_info->shift = clock->cycles.shift;
		mdev->clock_info->frac = clock->tc.frac;
		mdev->clock_info->overflow_period = clock->overflow_period;
	}

	FUNC2(&clock->pps_info.out_work, mlx5_pps_out);
	FUNC1(&clock->overflow_work, mlx5_timestamp_overflow);
	if (clock->overflow_period)
		FUNC22(&clock->overflow_work, 0);
	else
		FUNC17(mdev, "invalid overflow period, overflow_work is not scheduled\n");

	/* Configure the PHC */
	clock->ptp_info = mlx5_ptp_clock_info;

	/* Initialize 1PPS data structures */
	if (FUNC6(mdev))
		FUNC19(mdev);
	if (clock->ptp_info.n_pins)
		FUNC20(clock);

	clock->ptp = FUNC21(&clock->ptp_info,
					&mdev->pdev->dev);
	if (FUNC3(clock->ptp)) {
		FUNC17(mdev, "ptp_clock_register failed %ld\n",
			       FUNC7(clock->ptp));
		clock->ptp = NULL;
	}

	FUNC5(&clock->pps_nb, mlx5_pps_event, PPS_EVENT);
	FUNC18(mdev, &clock->pps_nb);
}