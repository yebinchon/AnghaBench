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
struct TYPE_2__ {struct clk** clock; } ;
struct gpmi_nand_data {TYPE_1__ resources; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int GPMI_CLK_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 

__attribute__((used)) static int FUNC2(struct gpmi_nand_data *this, bool v)
{
	struct clk *clk;
	int ret;
	int i;

	for (i = 0; i < GPMI_CLK_MAX; i++) {
		clk = this->resources.clock[i];
		if (!clk)
			break;

		if (v) {
			ret = FUNC1(clk);
			if (ret)
				goto err_clk;
		} else {
			FUNC0(clk);
		}
	}
	return 0;

err_clk:
	for (; i > 0; i--)
		FUNC0(this->resources.clock[i - 1]);
	return ret;
}