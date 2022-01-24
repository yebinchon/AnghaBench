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
struct tegra_emc {int dummy; } ;
struct device {int dummy; } ;
struct dentry {int dummy; } ;
typedef  struct tegra_emc clk ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tegra_emc*) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_emc*) ; 
 int S_IRUGO ; 
 int S_IWUSR ; 
 struct tegra_emc* FUNC2 (char*,char*) ; 
 struct dentry* FUNC3 (char*,int /*<<< orphan*/ *) ; 
 struct dentry* FUNC4 (char*,int,struct dentry*,struct tegra_emc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,...) ; 
 int /*<<< orphan*/  emc_debug_rate_fops ; 
 int /*<<< orphan*/  emc_debug_supported_rates_fops ; 

__attribute__((used)) static void FUNC6(struct device *dev, struct tegra_emc *emc)
{
	struct dentry *root, *file;
	struct clk *clk;

	root = FUNC3("emc", NULL);
	if (!root) {
		FUNC5(dev, "failed to create debugfs directory\n");
		return;
	}

	clk = FUNC2("tegra-clk-debug", "emc");
	if (FUNC0(clk)) {
		FUNC5(dev, "failed to get debug clock: %ld\n", FUNC1(clk));
		return;
	}

	file = FUNC4("rate", S_IRUGO | S_IWUSR, root, clk,
				   &emc_debug_rate_fops);
	if (!file)
		FUNC5(dev, "failed to create debugfs entry\n");

	file = FUNC4("supported_rates", S_IRUGO, root, emc,
				   &emc_debug_supported_rates_fops);
	if (!file)
		FUNC5(dev, "failed to create debugfs entry\n");
}