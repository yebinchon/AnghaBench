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
struct isc_device {struct isc_clk* isc_clks; TYPE_1__* dev; } ;
struct isc_clk {int /*<<< orphan*/  clk; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct isc_clk*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct isc_device *isc)
{
	unsigned int i;

	FUNC3(isc->dev->of_node);

	for (i = 0; i < FUNC0(isc->isc_clks); i++) {
		struct isc_clk *isc_clk = &isc->isc_clks[i];

		if (!FUNC1(isc_clk->clk))
			FUNC2(isc_clk->clk);
	}
}