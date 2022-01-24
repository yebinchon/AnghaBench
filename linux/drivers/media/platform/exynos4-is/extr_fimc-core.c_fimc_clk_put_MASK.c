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
struct fimc_dev {int /*<<< orphan*/ * clock; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int MAX_FIMC_CLOCKS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct fimc_dev *fimc)
{
	int i;
	for (i = 0; i < MAX_FIMC_CLOCKS; i++) {
		if (FUNC1(fimc->clock[i]))
			continue;
		FUNC3(fimc->clock[i]);
		FUNC2(fimc->clock[i]);
		fimc->clock[i] = FUNC0(-EINVAL);
	}
}