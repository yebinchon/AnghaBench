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
struct tegra_emc {int dram_type; int /*<<< orphan*/  last_timing; int /*<<< orphan*/  mc; int /*<<< orphan*/  dram_num; scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ EMC_FBIO_CFG5 ; 
 int EMC_FBIO_CFG5_DRAM_TYPE_MASK ; 
 int EMC_FBIO_CFG5_DRAM_TYPE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct tegra_emc*,int /*<<< orphan*/ *) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct tegra_emc *emc)
{
	emc->dram_type = FUNC1(emc->regs + EMC_FBIO_CFG5);
	emc->dram_type &= EMC_FBIO_CFG5_DRAM_TYPE_MASK;
	emc->dram_type >>= EMC_FBIO_CFG5_DRAM_TYPE_SHIFT;

	emc->dram_num = FUNC2(emc->mc);

	FUNC0(emc, &emc->last_timing);

	return 0;
}