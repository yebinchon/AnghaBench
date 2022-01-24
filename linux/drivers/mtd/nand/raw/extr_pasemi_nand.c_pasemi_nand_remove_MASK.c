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
struct platform_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  IO_ADDR_R; } ;
struct nand_chip {TYPE_1__ legacy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nand_chip*) ; 
 int /*<<< orphan*/  lpcctl ; 
 struct nand_chip* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nand_chip*) ; 
 int /*<<< orphan*/ * pasemi_nand_mtd ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct platform_device *ofdev)
{
	struct nand_chip *chip;

	if (!pasemi_nand_mtd)
		return 0;

	chip = FUNC2(pasemi_nand_mtd);

	/* Release resources, unregister device */
	FUNC3(chip);

	FUNC4(lpcctl, 4);

	FUNC0(chip->legacy.IO_ADDR_R);

	/* Free the MTD device structure */
	FUNC1(chip);

	pasemi_nand_mtd = NULL;

	return 0;
}