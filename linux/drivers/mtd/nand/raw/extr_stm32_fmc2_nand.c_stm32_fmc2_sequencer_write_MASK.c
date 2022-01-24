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
typedef  int /*<<< orphan*/  u8 ;
struct nand_chip {int /*<<< orphan*/  oob_poi; } ;
struct mtd_info {int /*<<< orphan*/  oobsize; int /*<<< orphan*/  writesize; } ;

/* Variables and functions */
 int FUNC0 (struct nand_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct nand_chip*) ; 
 struct mtd_info* FUNC2 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct nand_chip*,int,int,int) ; 
 int FUNC4 (struct nand_chip*,int /*<<< orphan*/  const*,int,int) ; 

__attribute__((used)) static int FUNC5(struct nand_chip *chip,
				      const u8 *buf, int oob_required,
				      int page, int raw)
{
	struct mtd_info *mtd = FUNC2(chip);
	int ret;

	/* Configure the sequencer */
	FUNC3(chip, page, raw, true);

	/* Write the page */
	ret = FUNC4(chip, buf, raw, true);
	if (ret)
		return ret;

	/* Write oob */
	if (oob_required) {
		ret = FUNC0(chip, mtd->writesize,
						  chip->oob_poi, mtd->oobsize,
						  false);
		if (ret)
			return ret;
	}

	return FUNC1(chip);
}