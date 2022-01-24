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
struct nand_chip {int options; int /*<<< orphan*/  controller; } ;
struct mtd_info {int writesize; } ;
struct TYPE_2__ {int* addrs; int /*<<< orphan*/  naddrs; } ;
struct atmel_hsmc_nand_controller {TYPE_1__ op; } ;

/* Variables and functions */
 int NAND_ROW_ADDR_3 ; 
 struct mtd_info* FUNC0 (struct nand_chip*) ; 
 struct atmel_hsmc_nand_controller* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct nand_chip *chip, int page, int column)
{
	struct mtd_info *mtd = FUNC0(chip);
	struct atmel_hsmc_nand_controller *nc;

	nc = FUNC1(chip->controller);

	if (column >= 0) {
		nc->op.addrs[nc->op.naddrs++] = column;

		/*
		 * 2 address cycles for the column offset on large page NANDs.
		 */
		if (mtd->writesize > 512)
			nc->op.addrs[nc->op.naddrs++] = column >> 8;
	}

	if (page >= 0) {
		nc->op.addrs[nc->op.naddrs++] = page;
		nc->op.addrs[nc->op.naddrs++] = page >> 8;

		if (chip->options & NAND_ROW_ADDR_3)
			nc->op.addrs[nc->op.naddrs++] = page >> 16;
	}
}