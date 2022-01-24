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
struct vb2_queue {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sizeimage; } ;
struct rvin_dev {scalar_t__ state; int /*<<< orphan*/  scratch_phys; int /*<<< orphan*/  scratch; TYPE_1__ format; int /*<<< orphan*/  dev; int /*<<< orphan*/  qlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  RVIN_RETRIES ; 
 int /*<<< orphan*/  RVIN_TIMEOUT_MS ; 
 scalar_t__ STOPPED ; 
 scalar_t__ STOPPING ; 
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rvin_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rvin_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct rvin_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct rvin_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct rvin_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 struct rvin_dev* FUNC9 (struct vb2_queue*) ; 
 int /*<<< orphan*/  FUNC10 (struct rvin_dev*,char*) ; 

__attribute__((used)) static void FUNC11(struct vb2_queue *vq)
{
	struct rvin_dev *vin = FUNC9(vq);
	unsigned long flags;
	int retries = 0;

	FUNC7(&vin->qlock, flags);

	vin->state = STOPPING;

	/* Wait for streaming to stop */
	while (retries++ < RVIN_RETRIES) {

		FUNC4(vin);

		/* Check if HW is stopped */
		if (!FUNC3(vin)) {
			vin->state = STOPPED;
			break;
		}

		FUNC8(&vin->qlock, flags);
		FUNC1(RVIN_TIMEOUT_MS);
		FUNC7(&vin->qlock, flags);
	}

	if (vin->state != STOPPED) {
		/*
		 * If this happens something have gone horribly wrong.
		 * Set state to stopped to prevent the interrupt handler
		 * to make things worse...
		 */
		FUNC10(vin, "Failed stop HW, something is seriously broken\n");
		vin->state = STOPPED;
	}

	/* Release all active buffers */
	FUNC2(vin, VB2_BUF_STATE_ERROR);

	FUNC8(&vin->qlock, flags);

	FUNC6(vin, 0);

	/* disable interrupts */
	FUNC5(vin);

	/* Free scratch buffer. */
	FUNC0(vin->dev, vin->format.sizeimage, vin->scratch,
			  vin->scratch_phys);
}