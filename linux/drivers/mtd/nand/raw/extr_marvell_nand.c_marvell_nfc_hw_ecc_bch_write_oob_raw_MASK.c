#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int (* write_page_raw ) (struct nand_chip*,int /*<<< orphan*/ *,int,int) ;} ;
struct nand_chip {TYPE_1__ ecc; } ;
struct mtd_info {int /*<<< orphan*/  writesize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (struct nand_chip*) ; 
 struct mtd_info* FUNC2 (struct nand_chip*) ; 
 int FUNC3 (struct nand_chip*,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC4(struct nand_chip *chip,
						int page)
{
	struct mtd_info *mtd = FUNC2(chip);
	u8 *buf = FUNC1(chip);

	FUNC0(buf, 0xFF, mtd->writesize);

	return chip->ecc.write_page_raw(chip, buf, true, page);
}