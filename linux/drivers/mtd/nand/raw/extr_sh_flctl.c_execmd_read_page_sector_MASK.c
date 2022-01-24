#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sh_flctl {TYPE_1__* pdev; int /*<<< orphan*/ * done_buff; scalar_t__ page_size; } ;
struct TYPE_4__ {int /*<<< orphan*/  failed; int /*<<< orphan*/  corrected; } ;
struct mtd_info {int writesize; TYPE_2__ ecc_stats; } ;
typedef  enum flctl_ecc_res_t { ____Placeholder_flctl_ecc_res_t } flctl_ecc_res_t ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ACM_SACCES_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct sh_flctl*) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_flctl*) ; 
 int /*<<< orphan*/  FUNC2 (struct sh_flctl*) ; 
#define  FL_ERROR 129 
#define  FL_REPAIRABLE 128 
 int NAND_CMD_READ0 ; 
 int NAND_CMD_READSTART ; 
 int _4ECCCORRECT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sh_flctl*) ; 
 struct sh_flctl* FUNC6 (struct mtd_info*) ; 
 int FUNC7 (struct sh_flctl*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sh_flctl*,int,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mtd_info*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sh_flctl*) ; 
 int /*<<< orphan*/  FUNC12 (struct sh_flctl*) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct mtd_info *mtd, int page_addr)
{
	struct sh_flctl *flctl = FUNC6(mtd);
	int sector, page_sectors;
	enum flctl_ecc_res_t ecc_result;

	page_sectors = flctl->page_size ? 4 : 1;

	FUNC10(mtd, NAND_CMD_READ0,
		(NAND_CMD_READSTART << 8) | NAND_CMD_READ0);

	FUNC13(FUNC9(FUNC2(flctl)) | ACM_SACCES_MODE | _4ECCCORRECT,
		 FUNC2(flctl));
	FUNC13(FUNC9(FUNC1(flctl)) | page_sectors, FUNC1(flctl));
	FUNC13(page_addr << 2, FUNC0(flctl));

	FUNC5(flctl);
	FUNC11(flctl);

	for (sector = 0; sector < page_sectors; sector++) {
		FUNC8(flctl, 512, 512 * sector);

		ecc_result = FUNC7(flctl,
			&flctl->done_buff[mtd->writesize + 16 * sector],
			sector);

		switch (ecc_result) {
		case FL_REPAIRABLE:
			FUNC3(&flctl->pdev->dev,
				"applied ecc on page 0x%x", page_addr);
			mtd->ecc_stats.corrected++;
			break;
		case FL_ERROR:
			FUNC4(&flctl->pdev->dev,
				"page 0x%x contains corrupted data\n",
				page_addr);
			mtd->ecc_stats.failed++;
			break;
		default:
			;
		}
	}

	FUNC12(flctl);

	FUNC13(FUNC9(FUNC2(flctl)) & ~(ACM_SACCES_MODE | _4ECCCORRECT),
			FUNC2(flctl));
}