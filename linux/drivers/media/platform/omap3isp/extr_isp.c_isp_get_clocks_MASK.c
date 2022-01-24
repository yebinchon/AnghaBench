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
struct isp_device {struct clk** clock; int /*<<< orphan*/  dev; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct clk*) ; 
 int FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct clk* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * isp_clocks ; 

__attribute__((used)) static int FUNC5(struct isp_device *isp)
{
	struct clk *clk;
	unsigned int i;

	for (i = 0; i < FUNC0(isp_clocks); ++i) {
		clk = FUNC4(isp->dev, isp_clocks[i]);
		if (FUNC1(clk)) {
			FUNC3(isp->dev, "clk_get %s failed\n", isp_clocks[i]);
			return FUNC2(clk);
		}

		isp->clock[i] = clk;
	}

	return 0;
}