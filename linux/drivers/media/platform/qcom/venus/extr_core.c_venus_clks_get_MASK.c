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
struct venus_resources {unsigned int clks_num; int /*<<< orphan*/ * clks; } ;
struct venus_core {int /*<<< orphan*/ * clks; struct device* dev; struct venus_resources* res; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct venus_core *core)
{
	const struct venus_resources *res = core->res;
	struct device *dev = core->dev;
	unsigned int i;

	for (i = 0; i < res->clks_num; i++) {
		core->clks[i] = FUNC2(dev, res->clks[i]);
		if (FUNC0(core->clks[i]))
			return FUNC1(core->clks[i]);
	}

	return 0;
}