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
typedef  int /*<<< orphan*/  u32 ;
struct tegra_nand_controller {int /*<<< orphan*/  dev; scalar_t__ regs; } ;

/* Variables and functions */
 int FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 char** tegra_nand_reg_names ; 

__attribute__((used)) static void FUNC3(struct tegra_nand_controller *ctrl)
{
	u32 reg;
	int i;

	FUNC1(ctrl->dev, "Tegra NAND controller register dump\n");
	for (i = 0; i < FUNC0(tegra_nand_reg_names); i++) {
		const char *reg_name = tegra_nand_reg_names[i];

		if (!reg_name)
			continue;

		reg = FUNC2(ctrl->regs + (i * 4));
		FUNC1(ctrl->dev, "%s: 0x%08x\n", reg_name, reg);
	}
}