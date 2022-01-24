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
typedef  int u32 ;
struct nand_chip {int pagemask; } ;
struct mtd_info {int writesize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mtd_info*,int) ; 
 struct nand_chip* FUNC1 (struct mtd_info*) ; 

__attribute__((used)) static void FUNC2(struct mtd_info *mtd, int column, int page)
{
	struct nand_chip *chip = FUNC1(mtd);
	u32 pagemask = chip->pagemask;

	if (column != -1) {
		FUNC0(mtd, column);
		if (mtd->writesize > 512)
			FUNC0(mtd, column >> 8);
	}

	if (page != -1) {
		do {
			FUNC0(mtd, page & 0xFF);
			page >>= 8;
			pagemask >>= 8;
		} while (pagemask);
	}
}