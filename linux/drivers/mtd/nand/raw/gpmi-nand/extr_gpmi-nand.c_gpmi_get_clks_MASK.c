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
struct resources {struct clk** clock; } ;
struct gpmi_nand_data {int /*<<< orphan*/  dev; TYPE_1__* devdata; struct resources resources; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {int clks_count; int /*<<< orphan*/ * clks; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct gpmi_nand_data*) ; 
 scalar_t__ FUNC1 (struct clk*) ; 
 int FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 struct clk* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct gpmi_nand_data *this)
{
	struct resources *r = &this->resources;
	struct clk *clk;
	int err, i;

	for (i = 0; i < this->devdata->clks_count; i++) {
		clk = FUNC5(this->dev, this->devdata->clks[i]);
		if (FUNC1(clk)) {
			err = FUNC2(clk);
			goto err_clock;
		}

		r->clock[i] = clk;
	}

	if (FUNC0(this))
		/*
		 * Set the default value for the gpmi clock.
		 *
		 * If you want to use the ONFI nand which is in the
		 * Synchronous Mode, you should change the clock as you need.
		 */
		FUNC3(r->clock[0], 22000000);

	return 0;

err_clock:
	FUNC4(this->dev, "failed in finding the clocks.\n");
	return err;
}