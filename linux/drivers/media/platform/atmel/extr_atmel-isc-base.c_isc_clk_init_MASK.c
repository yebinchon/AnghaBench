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
struct isc_device {TYPE_1__* isc_clks; } ;
struct TYPE_2__ {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct isc_device*,unsigned int) ; 

int FUNC3(struct isc_device *isc)
{
	unsigned int i;
	int ret;

	for (i = 0; i < FUNC0(isc->isc_clks); i++)
		isc->isc_clks[i].clk = FUNC1(-EINVAL);

	for (i = 0; i < FUNC0(isc->isc_clks); i++) {
		ret = FUNC2(isc, i);
		if (ret)
			return ret;
	}

	return 0;
}