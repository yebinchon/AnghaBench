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
typedef  int /*<<< orphan*/  uint8_t ;
struct nand_chip {int chip_shift; } ;
struct mtd_oob_ops {size_t len; size_t retlen; int /*<<< orphan*/  mode; int /*<<< orphan*/ * datbuf; } ;
struct mtd_info {int dummy; } ;
typedef  int /*<<< orphan*/  ops ;
typedef  int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  MTD_OPS_PLACE_OOB ; 
 int /*<<< orphan*/  FUNC0 (struct mtd_oob_ops*,int /*<<< orphan*/ ,int) ; 
 struct nand_chip* FUNC1 (struct mtd_info*) ; 
 int FUNC2 (struct nand_chip*,int,struct mtd_oob_ops*) ; 
 int /*<<< orphan*/  FUNC3 (struct nand_chip*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nand_chip*,int) ; 

__attribute__((used)) static int FUNC5(struct mtd_info *mtd, loff_t to, size_t len,
			    size_t *retlen, const uint8_t *buf)
{
	struct nand_chip *chip = FUNC1(mtd);
	int chipnr = (int)(to >> chip->chip_shift);
	struct mtd_oob_ops ops;
	int ret;

	FUNC3(chip, chipnr);

	/* Wait for the device to get ready */
	FUNC4(chip, 400);

	FUNC0(&ops, 0, sizeof(ops));
	ops.len = len;
	ops.datbuf = (uint8_t *)buf;
	ops.mode = MTD_OPS_PLACE_OOB;

	ret = FUNC2(chip, to, &ops);

	*retlen = ops.retlen;
	return ret;
}