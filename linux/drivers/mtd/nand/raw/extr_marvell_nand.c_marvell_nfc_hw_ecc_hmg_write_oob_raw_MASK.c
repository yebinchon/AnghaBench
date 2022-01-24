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
struct mtd_info {int /*<<< orphan*/  writesize; } ;

/* Variables and functions */
 int FUNC0 (struct nand_chip*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nand_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct nand_chip*) ; 
 struct mtd_info* FUNC4 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC5(struct nand_chip *chip,
						int page)
{
	struct mtd_info *mtd = FUNC4(chip);
	u8 *buf = FUNC3(chip);

	FUNC2(buf, 0xFF, mtd->writesize);

	FUNC1(chip, chip->cur_cs);
	return FUNC0(chip, buf, chip->oob_poi,
						    true, page);
}