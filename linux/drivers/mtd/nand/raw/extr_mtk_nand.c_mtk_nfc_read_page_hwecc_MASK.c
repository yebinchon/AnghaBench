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
struct nand_chip {int dummy; } ;
struct mtd_info {int /*<<< orphan*/  writesize; } ;

/* Variables and functions */
 int FUNC0 (struct mtd_info*,struct nand_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct mtd_info* FUNC1 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC2(struct nand_chip *chip, u8 *p, int oob_on,
				   int pg)
{
	struct mtd_info *mtd = FUNC1(chip);

	return FUNC0(mtd, chip, 0, mtd->writesize, p, pg, 0);
}