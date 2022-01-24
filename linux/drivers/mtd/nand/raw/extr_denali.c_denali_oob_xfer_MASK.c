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
struct nand_ecc_ctrl {int steps; int size; int bytes; } ;
struct nand_chip {struct nand_ecc_ctrl ecc; } ;
struct mtd_info {int writesize; int oobsize; } ;
struct denali_controller {int oob_skip_bytes; } ;

/* Variables and functions */
 int FUNC0 (struct nand_chip*,int,void*,int,int) ; 
 struct mtd_info* FUNC1 (struct nand_chip*) ; 
 struct denali_controller* FUNC2 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC3(struct nand_chip *chip, void *buf, bool write)
{
	struct denali_controller *denali = FUNC2(chip);
	struct mtd_info *mtd = FUNC1(chip);
	struct nand_ecc_ctrl *ecc = &chip->ecc;
	int writesize = mtd->writesize;
	int oobsize = mtd->oobsize;
	int oob_skip = denali->oob_skip_bytes;
	int ret, i, pos, len;

	/* BBM at the beginning of the OOB area */
	ret = FUNC0(chip, writesize, buf, oob_skip, write);
	if (ret)
		return ret;

	buf += oob_skip;

	for (i = 0; i < ecc->steps; i++) {
		pos = ecc->size + i * (ecc->size + ecc->bytes);

		if (i == ecc->steps - 1)
			/* The last chunk includes OOB free */
			len = writesize + oobsize - pos - oob_skip;
		else
			len = ecc->bytes;

		if (pos >= writesize) {
			pos += oob_skip;
		} else if (pos + len > writesize) {
			/* This chunk overwraps the BBM area. Must be split */
			ret = FUNC0(chip, pos, buf,
						   writesize - pos, write);
			if (ret)
				return ret;

			buf += writesize - pos;
			len -= writesize - pos;
			pos = writesize + oob_skip;
		}

		ret = FUNC0(chip, pos, buf, len, write);
		if (ret)
			return ret;

		buf += len;
	}

	return 0;
}