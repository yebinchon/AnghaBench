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
struct nand_chip {scalar_t__ oob_poi; } ;
struct mtd_oob_region {int /*<<< orphan*/  length; scalar_t__ offset; } ;
struct mtd_info {scalar_t__ writesize; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct mtd_info*,int /*<<< orphan*/ ,struct mtd_oob_region*) ; 
 int /*<<< orphan*/  FUNC1 (struct nand_chip*) ; 
 int FUNC2 (struct nand_chip*,int,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 struct mtd_info* FUNC3 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC4(struct nand_chip *chip, int page)
{
	struct mtd_info *mtd = FUNC3(chip);
	struct mtd_oob_region of = { };

	/* Do we have available oob area? */
	FUNC0(mtd, 0, &of);
	if (!of.length)
		return -EPERM;

	if (!FUNC1(chip))
		return -EPERM;

	return FUNC2(chip, page, mtd->writesize + of.offset,
				 chip->oob_poi + of.offset, of.length);
}