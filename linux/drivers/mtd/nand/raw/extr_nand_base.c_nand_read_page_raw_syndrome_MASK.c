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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {int size; int bytes; int steps; int prepad; int postpad; } ;
struct nand_chip {int /*<<< orphan*/ * oob_poi; TYPE_1__ ecc; } ;
struct mtd_info {int oobsize; } ;

/* Variables and functions */
 int FUNC0 (struct nand_chip*,int /*<<< orphan*/ *,int,int) ; 
 int FUNC1 (struct nand_chip*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct mtd_info* FUNC2 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC3(struct nand_chip *chip, uint8_t *buf,
				       int oob_required, int page)
{
	struct mtd_info *mtd = FUNC2(chip);
	int eccsize = chip->ecc.size;
	int eccbytes = chip->ecc.bytes;
	uint8_t *oob = chip->oob_poi;
	int steps, size, ret;

	ret = FUNC1(chip, page, 0, NULL, 0);
	if (ret)
		return ret;

	for (steps = chip->ecc.steps; steps > 0; steps--) {
		ret = FUNC0(chip, buf, eccsize, false);
		if (ret)
			return ret;

		buf += eccsize;

		if (chip->ecc.prepad) {
			ret = FUNC0(chip, oob, chip->ecc.prepad,
						false);
			if (ret)
				return ret;

			oob += chip->ecc.prepad;
		}

		ret = FUNC0(chip, oob, eccbytes, false);
		if (ret)
			return ret;

		oob += eccbytes;

		if (chip->ecc.postpad) {
			ret = FUNC0(chip, oob, chip->ecc.postpad,
						false);
			if (ret)
				return ret;

			oob += chip->ecc.postpad;
		}
	}

	size = mtd->oobsize - (oob - chip->oob_poi);
	if (size) {
		ret = FUNC0(chip, oob, size, false);
		if (ret)
			return ret;
	}

	return 0;
}