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
struct mtd_oob_ops {scalar_t__ mode; int /*<<< orphan*/  datbuf; scalar_t__ retlen; } ;
struct mtd_info {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int ENOTSUPP ; 
 scalar_t__ MTD_OPS_AUTO_OOB ; 
 scalar_t__ MTD_OPS_PLACE_OOB ; 
 scalar_t__ MTD_OPS_RAW ; 
 struct nand_chip* FUNC0 (struct mtd_info*) ; 
 int FUNC1 (struct nand_chip*,int /*<<< orphan*/ ,struct mtd_oob_ops*) ; 
 int FUNC2 (struct nand_chip*,int /*<<< orphan*/ ,struct mtd_oob_ops*) ; 
 int FUNC3 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC5(struct mtd_info *mtd, loff_t from,
			 struct mtd_oob_ops *ops)
{
	struct nand_chip *chip = FUNC0(mtd);
	int ret;

	ops->retlen = 0;

	if (ops->mode != MTD_OPS_PLACE_OOB &&
	    ops->mode != MTD_OPS_AUTO_OOB &&
	    ops->mode != MTD_OPS_RAW)
		return -ENOTSUPP;

	ret = FUNC3(chip);
	if (ret)
		return ret;

	if (!ops->datbuf)
		ret = FUNC1(chip, from, ops);
	else
		ret = FUNC2(chip, from, ops);

	FUNC4(chip);
	return ret;
}