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
struct nand_chip {int /*<<< orphan*/  oob_poi; int /*<<< orphan*/  cur_cs; } ;
struct mtd_info {int /*<<< orphan*/  oobsize; int /*<<< orphan*/  writesize; } ;

/* Variables and functions */
 int FUNC0 (struct nand_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct mtd_info* FUNC1 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct nand_chip*,int,int,int) ; 
 int FUNC3 (struct nand_chip*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct nand_chip*,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC5(struct nand_chip *chip, u8 *buf,
					      int oob_required, int page)
{
	struct mtd_info *mtd = FUNC1(chip);
	int ret;

	/* Select the target */
	ret = FUNC3(chip, chip->cur_cs);
	if (ret)
		return ret;

	/* Configure the sequencer */
	FUNC2(chip, page, 1, false);

	/* Read the page */
	ret = FUNC4(chip, buf, 1, false);
	if (ret)
		return ret;

	/* Read oob */
	if (oob_required)
		return FUNC0(chip, mtd->writesize,
						  chip->oob_poi, mtd->oobsize,
						  false);

	return 0;
}