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
typedef  int u32 ;
struct tegra_emc {int /*<<< orphan*/  dev; scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ EMC_INTSTATUS ; 
 int EMC_INTSTATUS_CLKCHANGE_COMPLETE ; 
 unsigned int EMC_STATUS_UPDATE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct tegra_emc *emc)
{
	unsigned int i;
	u32 value;

	for (i = 0; i < EMC_STATUS_UPDATE_TIMEOUT; ++i) {
		value = FUNC1(emc->regs + EMC_INTSTATUS);
		if (value & EMC_INTSTATUS_CLKCHANGE_COMPLETE)
			return;
		FUNC2(1);
	}

	FUNC0(emc->dev, "clock change timed out\n");
}