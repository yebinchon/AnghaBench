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
struct TYPE_2__ {int steps; int /*<<< orphan*/  bytes; } ;
struct nand_chip {TYPE_1__ ecc; void* oob_poi; int /*<<< orphan*/  controller; } ;
struct mtd_oob_region {int offset; } ;
struct mtd_info {int dummy; } ;
struct atmel_nand_controller {int /*<<< orphan*/  dev; } ;
struct atmel_nand {int /*<<< orphan*/  pmecc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,void*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mtd_info*,int /*<<< orphan*/ ,struct mtd_oob_region*) ; 
 struct mtd_info* FUNC4 (struct nand_chip*) ; 
 struct atmel_nand* FUNC5 (struct nand_chip*) ; 
 struct atmel_nand_controller* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct nand_chip *chip, bool raw)
{
	struct atmel_nand *nand = FUNC5(chip);
	struct mtd_info *mtd = FUNC4(chip);
	struct atmel_nand_controller *nc;
	struct mtd_oob_region oobregion;
	void *eccbuf;
	int ret, i;

	nc = FUNC6(chip->controller);

	if (raw)
		return 0;

	ret = FUNC1(nand->pmecc);
	if (ret) {
		FUNC2(nc->dev,
			"Failed to transfer NAND page data (err = %d)\n",
			ret);
		return ret;
	}

	FUNC3(mtd, 0, &oobregion);
	eccbuf = chip->oob_poi + oobregion.offset;

	for (i = 0; i < chip->ecc.steps; i++) {
		FUNC0(nand->pmecc, i,
						   eccbuf);
		eccbuf += chip->ecc.bytes;
	}

	return 0;
}