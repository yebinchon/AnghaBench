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
struct nand_chip {int dummy; } ;
struct fsl_upm_nand {size_t mchip_number; int /*<<< orphan*/  dev; int /*<<< orphan*/ * rnb_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nand_chip*) ; 
 struct fsl_upm_nand* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct nand_chip *chip)
{
	struct fsl_upm_nand *fun = FUNC3(FUNC2(chip));

	if (FUNC1(fun->rnb_gpio[fun->mchip_number]))
		return 1;

	FUNC0(fun->dev, "busy\n");
	return 0;
}