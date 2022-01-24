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
struct nand_chip {scalar_t__ oob_poi; } ;
struct mtd_oob_ops {int mode; scalar_t__ ooboffs; } ;
struct mtd_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  MTD_OPS_AUTO_OOB 130 
#define  MTD_OPS_PLACE_OOB 129 
#define  MTD_OPS_RAW 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,size_t) ; 
 int FUNC3 (struct mtd_info*,int /*<<< orphan*/ *,scalar_t__,scalar_t__,size_t) ; 
 struct mtd_info* FUNC4 (struct nand_chip*) ; 

__attribute__((used)) static uint8_t *FUNC5(struct nand_chip *chip, uint8_t *oob,
				  struct mtd_oob_ops *ops, size_t len)
{
	struct mtd_info *mtd = FUNC4(chip);
	int ret;

	switch (ops->mode) {

	case MTD_OPS_PLACE_OOB:
	case MTD_OPS_RAW:
		FUNC2(oob, chip->oob_poi + ops->ooboffs, len);
		return oob + len;

	case MTD_OPS_AUTO_OOB:
		ret = FUNC3(mtd, oob, chip->oob_poi,
						  ops->ooboffs, len);
		FUNC1(ret);
		return oob + len;

	default:
		FUNC0();
	}
	return NULL;
}