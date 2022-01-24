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
struct nand_ecc_ctrl {int bytes; } ;
struct mtd_info {int dummy; } ;
struct TYPE_4__ {struct nand_ecc_ctrl ecc; } ;
struct brcmnand_cfg {unsigned int ecc_level; int spare_area_size; int sector_size_1k; int page_size; } ;
struct brcmnand_host {TYPE_1__* pdev; int /*<<< orphan*/  ctrl; TYPE_2__ chip; struct brcmnand_cfg hwcfg; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (unsigned int,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  brcmnand_bch_lp_ooblayout_ops ; 
 int /*<<< orphan*/  brcmnand_bch_sp_ooblayout_ops ; 
 int /*<<< orphan*/  brcmnand_hamming_ooblayout_ops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct brcmnand_cfg*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtd_info*,int /*<<< orphan*/ *) ; 
 struct mtd_info* FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC5(struct brcmnand_host *host)
{
	struct brcmnand_cfg *p = &host->hwcfg;
	struct mtd_info *mtd = FUNC4(&host->chip);
	struct nand_ecc_ctrl *ecc = &host->chip.ecc;
	unsigned int ecc_level = p->ecc_level;
	int sas = p->spare_area_size << p->sector_size_1k;
	int sectors = p->page_size / (512 << p->sector_size_1k);

	if (p->sector_size_1k)
		ecc_level <<= 1;

	if (FUNC2(host->ctrl, p)) {
		ecc->bytes = 3 * sectors;
		FUNC3(mtd, &brcmnand_hamming_ooblayout_ops);
		return 0;
	}

	/*
	 * CONTROLLER_VERSION:
	 *   < v5.0: ECC_REQ = ceil(BCH_T * 13/8)
	 *  >= v5.0: ECC_REQ = ceil(BCH_T * 14/8)
	 * But we will just be conservative.
	 */
	ecc->bytes = FUNC0(ecc_level * 14, 8);
	if (p->page_size == 512)
		FUNC3(mtd, &brcmnand_bch_sp_ooblayout_ops);
	else
		FUNC3(mtd, &brcmnand_bch_lp_ooblayout_ops);

	if (ecc->bytes >= sas) {
		FUNC1(&host->pdev->dev,
			"error: ECC too large for OOB (ECC bytes %d, spare sector %d)\n",
			ecc->bytes, sas);
		return -EINVAL;
	}

	return 0;
}