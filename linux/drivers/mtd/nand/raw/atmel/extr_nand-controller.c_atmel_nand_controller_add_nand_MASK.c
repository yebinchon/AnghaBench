#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nand_chip {int dummy; } ;
struct mtd_info {int dummy; } ;
struct atmel_nand_controller {int /*<<< orphan*/  chips; int /*<<< orphan*/  dev; TYPE_2__* caps; } ;
struct atmel_nand {int /*<<< orphan*/  node; int /*<<< orphan*/  numcs; scalar_t__ cdgpio; struct nand_chip base; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* nand_init ) (struct atmel_nand_controller*,struct atmel_nand*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct mtd_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nand_chip*) ; 
 int FUNC6 (struct nand_chip*,int /*<<< orphan*/ ) ; 
 struct mtd_info* FUNC7 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC8 (struct atmel_nand_controller*,struct atmel_nand*) ; 

__attribute__((used)) static int
FUNC9(struct atmel_nand_controller *nc,
			       struct atmel_nand *nand)
{
	struct nand_chip *chip = &nand->base;
	struct mtd_info *mtd = FUNC7(chip);
	int ret;

	/* No card inserted, skip this NAND. */
	if (nand->cdgpio && FUNC2(nand->cdgpio)) {
		FUNC1(nc->dev, "No SmartMedia card inserted.\n");
		return 0;
	}

	nc->caps->ops->nand_init(nc, nand);

	ret = FUNC6(chip, nand->numcs);
	if (ret) {
		FUNC0(nc->dev, "NAND scan failed: %d\n", ret);
		return ret;
	}

	ret = FUNC4(mtd, NULL, 0);
	if (ret) {
		FUNC0(nc->dev, "Failed to register mtd device: %d\n", ret);
		FUNC5(chip);
		return ret;
	}

	FUNC3(&nand->node, &nc->chips);

	return 0;
}