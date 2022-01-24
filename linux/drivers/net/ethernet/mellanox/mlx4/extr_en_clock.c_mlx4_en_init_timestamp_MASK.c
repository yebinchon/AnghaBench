#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  name; } ;
struct TYPE_9__ {int /*<<< orphan*/  mult; int /*<<< orphan*/  shift; int /*<<< orphan*/  mask; int /*<<< orphan*/  read; } ;
struct mlx4_en_dev {int /*<<< orphan*/ * ptp_clock; TYPE_2__* pdev; TYPE_4__ ptp_clock_info; int /*<<< orphan*/  clock_lock; TYPE_3__ cycles; int /*<<< orphan*/  clock; int /*<<< orphan*/  nominal_c_mult; struct mlx4_dev* dev; } ;
struct TYPE_7__ {int hca_core_clock; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 TYPE_4__ mlx4_en_ptp_clock_info ; 
 int /*<<< orphan*/  mlx4_en_read_clock ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_en_dev*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx4_en_dev*,char*) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC15(struct mlx4_en_dev *mdev)
{
	struct mlx4_dev *dev = mdev->dev;
	unsigned long flags;

	/* mlx4_en_init_timestamp is called for each netdev.
	 * mdev->ptp_clock is common for all ports, skip initialization if
	 * was done for other port.
	 */
	if (mdev->ptp_clock)
		return;

	FUNC10(&mdev->clock_lock);

	FUNC6(&mdev->cycles, 0, sizeof(mdev->cycles));
	mdev->cycles.read = mlx4_en_read_clock;
	mdev->cycles.mask = FUNC0(48);
	mdev->cycles.shift = FUNC3(dev->caps.hca_core_clock);
	mdev->cycles.mult =
		FUNC2(1000 * dev->caps.hca_core_clock, mdev->cycles.shift);
	mdev->nominal_c_mult = mdev->cycles.mult;

	FUNC13(&mdev->clock_lock, flags);
	FUNC12(&mdev->clock, &mdev->cycles,
			 FUNC5(FUNC4()));
	FUNC14(&mdev->clock_lock, flags);

	/* Configure the PHC */
	mdev->ptp_clock_info = mlx4_en_ptp_clock_info;
	FUNC11(mdev->ptp_clock_info.name, 16, "mlx4 ptp");

	mdev->ptp_clock = FUNC9(&mdev->ptp_clock_info,
					     &mdev->pdev->dev);
	if (FUNC1(mdev->ptp_clock)) {
		mdev->ptp_clock = NULL;
		FUNC7(mdev, "ptp_clock_register failed\n");
	} else if (mdev->ptp_clock) {
		FUNC8(mdev, "registered PHC clock\n");
	}

}