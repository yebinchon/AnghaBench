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
struct omap_nand_info {int ecc_opt; TYPE_1__* pdev; int /*<<< orphan*/  elm_of_node; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_MTD_NAND_ECC_SW_BCH ; 
 int /*<<< orphan*/  CONFIG_MTD_NAND_OMAP_BCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  OMAP_ECC_BCH16_CODE_HW 132 
#define  OMAP_ECC_BCH4_CODE_HW 131 
#define  OMAP_ECC_BCH4_CODE_HW_DETECTION_SW 130 
#define  OMAP_ECC_BCH8_CODE_HW 129 
#define  OMAP_ECC_BCH8_CODE_HW_DETECTION_SW 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_nand_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct omap_nand_info *info)
{
	bool ecc_needs_bch, ecc_needs_omap_bch, ecc_needs_elm;

	switch (info->ecc_opt) {
	case OMAP_ECC_BCH4_CODE_HW_DETECTION_SW:
	case OMAP_ECC_BCH8_CODE_HW_DETECTION_SW:
		ecc_needs_omap_bch = false;
		ecc_needs_bch = true;
		ecc_needs_elm = false;
		break;
	case OMAP_ECC_BCH4_CODE_HW:
	case OMAP_ECC_BCH8_CODE_HW:
	case OMAP_ECC_BCH16_CODE_HW:
		ecc_needs_omap_bch = true;
		ecc_needs_bch = false;
		ecc_needs_elm = true;
		break;
	default:
		ecc_needs_omap_bch = false;
		ecc_needs_bch = false;
		ecc_needs_elm = false;
		break;
	}

	if (ecc_needs_bch && !FUNC0(CONFIG_MTD_NAND_ECC_SW_BCH)) {
		FUNC1(&info->pdev->dev,
			"CONFIG_MTD_NAND_ECC_SW_BCH not enabled\n");
		return false;
	}
	if (ecc_needs_omap_bch && !FUNC0(CONFIG_MTD_NAND_OMAP_BCH)) {
		FUNC1(&info->pdev->dev,
			"CONFIG_MTD_NAND_OMAP_BCH not enabled\n");
		return false;
	}
	if (ecc_needs_elm && !FUNC2(info, info->elm_of_node)) {
		FUNC1(&info->pdev->dev, "ELM not available\n");
		return false;
	}

	return true;
}