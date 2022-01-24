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
struct mfd_cell {char* name; } ;
struct intel_lpss {int devid; scalar_t__ type; struct clk* clk; int /*<<< orphan*/  clock; TYPE_1__* info; int /*<<< orphan*/  dev; struct mfd_cell* cell; } ;
struct clk {int dummy; } ;
typedef  int /*<<< orphan*/  devname ;
struct TYPE_2__ {int /*<<< orphan*/  clk_con_id; int /*<<< orphan*/  clk_rate; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 scalar_t__ LPSS_DEV_I2C ; 
 int FUNC1 (struct clk*) ; 
 struct clk* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct intel_lpss*,char*,struct clk**) ; 
 int /*<<< orphan*/  FUNC6 (struct clk*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*,int) ; 

__attribute__((used)) static int FUNC8(struct intel_lpss *lpss)
{
	const struct mfd_cell *cell = lpss->cell;
	struct clk *clk;
	char devname[24];
	int ret;

	if (!lpss->info->clk_rate)
		return 0;

	/* Root clock */
	clk = FUNC2(NULL, FUNC4(lpss->dev), NULL, 0,
				      lpss->info->clk_rate);
	if (FUNC0(clk))
		return FUNC1(clk);

	FUNC7(devname, sizeof(devname), "%s.%d", cell->name, lpss->devid);

	/*
	 * Support for clock divider only if it has some preset value.
	 * Otherwise we assume that the divider is not used.
	 */
	if (lpss->type != LPSS_DEV_I2C) {
		ret = FUNC5(lpss, devname, &clk);
		if (ret)
			goto err_clk_register;
	}

	ret = -ENOMEM;

	/* Clock for the host controller */
	lpss->clock = FUNC3(clk, lpss->info->clk_con_id, "%s", devname);
	if (!lpss->clock)
		goto err_clk_register;

	lpss->clk = clk;

	return 0;

err_clk_register:
	FUNC6(clk);

	return ret;
}