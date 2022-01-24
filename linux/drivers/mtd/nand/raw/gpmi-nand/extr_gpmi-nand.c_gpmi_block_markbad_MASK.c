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
typedef  scalar_t__ uint8_t ;
struct nand_chip {int chip_shift; int page_shift; } ;
struct mtd_info {int writesize; } ;
struct gpmi_nand_data {scalar_t__* data_buffer_dma; } ;
typedef  int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gpmi_nand_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct nand_chip*) ; 
 struct gpmi_nand_data* FUNC2 (struct nand_chip*) ; 
 int FUNC3 (struct nand_chip*,int,int,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nand_chip*,int) ; 
 struct mtd_info* FUNC5 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC6(struct nand_chip *chip, loff_t ofs)
{
	struct mtd_info *mtd = FUNC5(chip);
	struct gpmi_nand_data *this = FUNC2(chip);
	int ret = 0;
	uint8_t *block_mark;
	int column, page, chipnr;

	chipnr = (int)(ofs >> chip->chip_shift);
	FUNC4(chip, chipnr);

	column = !FUNC0(this) ? mtd->writesize : 0;

	/* Write the block mark. */
	block_mark = this->data_buffer_dma;
	block_mark[0] = 0; /* bad block marker */

	/* Shift to get page */
	page = (int)(ofs >> chip->page_shift);

	ret = FUNC3(chip, page, column, block_mark, 1);

	FUNC1(chip);

	return ret;
}