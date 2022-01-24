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
struct tegra_nand_controller {int /*<<< orphan*/  cur_cs; } ;
struct tegra_nand_chip {int /*<<< orphan*/ * cs; } ;
struct nand_chip {int /*<<< orphan*/  controller; } ;

/* Variables and functions */
 struct tegra_nand_chip* FUNC0 (struct nand_chip*) ; 
 struct tegra_nand_controller* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct nand_chip *chip,
				     unsigned int die_nr)
{
	struct tegra_nand_chip *nand = FUNC0(chip);
	struct tegra_nand_controller *ctrl = FUNC1(chip->controller);

	ctrl->cur_cs = nand->cs[die_nr];
}