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
struct sh_flctl {int seqin_page_addr; scalar_t__ page_size; } ;
struct mtd_info {scalar_t__ writesize; } ;

/* Variables and functions */
 int ACM_SACCES_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct sh_flctl*) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_flctl*) ; 
 int /*<<< orphan*/  FUNC2 (struct sh_flctl*) ; 
 int NAND_CMD_PAGEPROG ; 
 int NAND_CMD_SEQIN ; 
 int /*<<< orphan*/  FUNC3 (struct sh_flctl*) ; 
 struct sh_flctl* FUNC4 (struct mtd_info*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mtd_info*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sh_flctl*) ; 
 int /*<<< orphan*/  FUNC8 (struct sh_flctl*) ; 
 int /*<<< orphan*/  FUNC9 (struct sh_flctl*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct sh_flctl*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct mtd_info *mtd)
{
	struct sh_flctl *flctl = FUNC4(mtd);
	int page_addr = flctl->seqin_page_addr;
	int sector, page_sectors;

	page_sectors = flctl->page_size ? 4 : 1;

	FUNC6(mtd, NAND_CMD_PAGEPROG,
			(NAND_CMD_PAGEPROG << 8) | NAND_CMD_SEQIN);

	FUNC3(flctl);
	FUNC11(FUNC5(FUNC2(flctl)) | ACM_SACCES_MODE, FUNC2(flctl));
	FUNC11(FUNC5(FUNC1(flctl)) | page_sectors, FUNC1(flctl));
	FUNC11(page_addr << 2, FUNC0(flctl));
	FUNC7(flctl);

	for (sector = 0; sector < page_sectors; sector++) {
		FUNC10(flctl, 512, 512 * sector);
		FUNC9(flctl, 16, mtd->writesize + 16 * sector);
	}

	FUNC8(flctl);
	FUNC11(FUNC5(FUNC2(flctl)) & ~ACM_SACCES_MODE, FUNC2(flctl));
}