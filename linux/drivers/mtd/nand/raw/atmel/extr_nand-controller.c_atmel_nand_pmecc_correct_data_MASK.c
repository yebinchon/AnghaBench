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
struct TYPE_4__ {int steps; int /*<<< orphan*/  bytes; int /*<<< orphan*/  size; int /*<<< orphan*/  strength; } ;
struct nand_chip {TYPE_2__ ecc; void* oob_poi; int /*<<< orphan*/  controller; } ;
struct mtd_oob_region {int offset; } ;
struct TYPE_3__ {int /*<<< orphan*/  failed; } ;
struct mtd_info {TYPE_1__ ecc_stats; } ;
struct atmel_nand_controller {int /*<<< orphan*/  dev; } ;
struct atmel_nand {int /*<<< orphan*/  pmecc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,void*,void*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mtd_info*,int /*<<< orphan*/ ,struct mtd_oob_region*) ; 
 int FUNC6 (void*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mtd_info* FUNC7 (struct nand_chip*) ; 
 struct atmel_nand* FUNC8 (struct nand_chip*) ; 
 struct atmel_nand_controller* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct nand_chip *chip, void *buf,
					 bool raw)
{
	struct atmel_nand *nand = FUNC8(chip);
	struct mtd_info *mtd = FUNC7(chip);
	struct atmel_nand_controller *nc;
	struct mtd_oob_region oobregion;
	int ret, i, max_bitflips = 0;
	void *databuf, *eccbuf;

	nc = FUNC9(chip->controller);

	if (raw)
		return 0;

	ret = FUNC2(nand->pmecc);
	if (ret) {
		FUNC3(nc->dev,
			"Failed to read NAND page data (err = %d)\n",
			ret);
		return ret;
	}

	FUNC5(mtd, 0, &oobregion);
	eccbuf = chip->oob_poi + oobregion.offset;
	databuf = buf;

	for (i = 0; i < chip->ecc.steps; i++) {
		ret = FUNC1(nand->pmecc, i, databuf,
						 eccbuf);
		if (ret < 0 && !FUNC0(nand->pmecc))
			ret = FUNC6(databuf,
							  chip->ecc.size,
							  eccbuf,
							  chip->ecc.bytes,
							  NULL, 0,
							  chip->ecc.strength);

		if (ret >= 0)
			max_bitflips = FUNC4(ret, max_bitflips);
		else
			mtd->ecc_stats.failed++;

		databuf += chip->ecc.size;
		eccbuf += chip->ecc.bytes;
	}

	return max_bitflips;
}