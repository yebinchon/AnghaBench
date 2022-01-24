#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_5__ {int size; } ;
struct nand_chip {TYPE_2__ ecc; } ;
struct TYPE_4__ {int reg_size; } ;
struct mtk_nfc_nand_chip {TYPE_1__ fdm; } ;
struct mtk_nfc {int /*<<< orphan*/  ecc; } ;
struct mtk_ecc_stats {int bitflips; scalar_t__ failed; scalar_t__ corrected; } ;
struct TYPE_6__ {int /*<<< orphan*/  failed; int /*<<< orphan*/  corrected; } ;
struct mtd_info {TYPE_3__ ecc_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFI_STA ; 
 int STA_EMP_PAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 struct nand_chip* FUNC1 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct mtk_ecc_stats*,int) ; 
 struct mtk_nfc* FUNC3 (struct nand_chip*) ; 
 int FUNC4 (struct mtk_nfc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (struct nand_chip*,int) ; 
 struct mtk_nfc_nand_chip* FUNC6 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC7(struct mtd_info *mtd, u8 *buf, u32 start,
				    u32 sectors)
{
	struct nand_chip *chip = FUNC1(mtd);
	struct mtk_nfc *nfc = FUNC3(chip);
	struct mtk_nfc_nand_chip *mtk_nand = FUNC6(chip);
	struct mtk_ecc_stats stats;
	u32 reg_size = mtk_nand->fdm.reg_size;
	int rc, i;

	rc = FUNC4(nfc, NFI_STA) & STA_EMP_PAGE;
	if (rc) {
		FUNC0(buf, 0xff, sectors * chip->ecc.size);
		for (i = 0; i < sectors; i++)
			FUNC0(FUNC5(chip, start + i), 0xff, reg_size);
		return 0;
	}

	FUNC2(nfc->ecc, &stats, sectors);
	mtd->ecc_stats.corrected += stats.corrected;
	mtd->ecc_stats.failed += stats.failed;

	return stats.bitflips;
}