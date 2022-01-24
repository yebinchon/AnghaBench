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
struct tegra_emc {int /*<<< orphan*/  dev; int /*<<< orphan*/  clk; int /*<<< orphan*/  pll_m; int /*<<< orphan*/  emc_mux; int /*<<< orphan*/  backup_clk; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC3(struct tegra_emc *emc, unsigned long rate)
{
	int err;

	err = FUNC0(emc->emc_mux, emc->backup_clk);
	if (err) {
		FUNC2(emc->dev,
			"failed to reparent to backup source: %d\n", err);
		return err;
	}

	err = FUNC1(emc->pll_m, rate);
	if (err) {
		FUNC2(emc->dev,
			"failed to change pll_m rate: %d\n", err);
		return err;
	}

	err = FUNC0(emc->emc_mux, emc->pll_m);
	if (err) {
		FUNC2(emc->dev,
			"failed to reparent to pll_m: %d\n", err);
		return err;
	}

	err = FUNC1(emc->clk, rate);
	if (err) {
		FUNC2(emc->dev,
			"failed to change emc rate: %d\n", err);
		return err;
	}

	return 0;
}