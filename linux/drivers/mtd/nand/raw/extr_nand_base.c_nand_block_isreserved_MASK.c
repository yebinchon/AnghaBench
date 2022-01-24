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
struct nand_chip {int /*<<< orphan*/  bbt; } ;
struct mtd_info {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 struct nand_chip* FUNC0 (struct mtd_info*) ; 
 int FUNC1 (struct nand_chip*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct mtd_info *mtd, loff_t ofs)
{
	struct nand_chip *chip = FUNC0(mtd);

	if (!chip->bbt)
		return 0;
	/* Return info from the table */
	return FUNC1(chip, ofs);
}