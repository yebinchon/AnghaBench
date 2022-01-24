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
typedef  int /*<<< orphan*/  uint8_t ;
struct nand_chip {int /*<<< orphan*/  oob_poi; } ;
struct TYPE_2__ {int /*<<< orphan*/  failed; } ;
struct mtd_info {TYPE_1__ ecc_stats; int /*<<< orphan*/  oobsize; int /*<<< orphan*/  writesize; } ;
struct fsl_lbc_ctrl {struct fsl_elbc_fcm_ctrl* nand; } ;
struct fsl_elbc_mtd {struct fsl_lbc_ctrl* ctrl; } ;
struct fsl_elbc_fcm_ctrl {int max_bitflips; } ;

/* Variables and functions */
 int NAND_STATUS_FAIL ; 
 int /*<<< orphan*/  FUNC0 (struct nand_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nand_chip*) ; 
 struct fsl_elbc_mtd* FUNC2 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct nand_chip*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct mtd_info* FUNC4 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC5(struct nand_chip *chip, uint8_t *buf,
			      int oob_required, int page)
{
	struct mtd_info *mtd = FUNC4(chip);
	struct fsl_elbc_mtd *priv = FUNC2(chip);
	struct fsl_lbc_ctrl *ctrl = priv->ctrl;
	struct fsl_elbc_fcm_ctrl *elbc_fcm_ctrl = ctrl->nand;

	FUNC3(chip, page, 0, buf, mtd->writesize);
	if (oob_required)
		FUNC0(chip, chip->oob_poi, mtd->oobsize);

	if (FUNC1(chip) & NAND_STATUS_FAIL)
		mtd->ecc_stats.failed++;

	return elbc_fcm_ctrl->max_bitflips;
}