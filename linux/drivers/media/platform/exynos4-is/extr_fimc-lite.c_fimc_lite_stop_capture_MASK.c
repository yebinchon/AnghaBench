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
struct fimc_lite {int /*<<< orphan*/  state; int /*<<< orphan*/  irq_queue; int /*<<< orphan*/  slock; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  ST_FLITE_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct fimc_lite*) ; 
 int FUNC1 (struct fimc_lite*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fimc_lite*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC8(struct fimc_lite *fimc, bool suspend)
{
	unsigned long flags;

	if (!FUNC0(fimc))
		return 0;

	FUNC4(&fimc->slock, flags);
	FUNC3(ST_FLITE_OFF, &fimc->state);
	FUNC2(fimc);
	FUNC5(&fimc->slock, flags);

	FUNC7(fimc->irq_queue,
			   !FUNC6(ST_FLITE_OFF, &fimc->state),
			   (2*HZ/10)); /* 200 ms */

	return FUNC1(fimc, suspend);
}