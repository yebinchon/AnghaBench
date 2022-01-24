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
typedef  int u32 ;
struct qcom_nand_controller {int vld; void* cmd1; TYPE_1__* props; } ;
struct TYPE_2__ {scalar_t__ is_bam; } ;

/* Variables and functions */
 int BAM_MODE_EN ; 
 int DM_EN ; 
 int /*<<< orphan*/  NAND_CTRL ; 
 int /*<<< orphan*/  NAND_DEV_CMD1 ; 
 int /*<<< orphan*/  NAND_DEV_CMD_VLD ; 
 int NAND_DEV_CMD_VLD_VAL ; 
 int /*<<< orphan*/  NAND_FLASH_CHIP_SELECT ; 
 int /*<<< orphan*/  SFLASHC_BURST_CFG ; 
 int /*<<< orphan*/  FUNC0 (struct qcom_nand_controller*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct qcom_nand_controller*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qcom_nand_controller*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct qcom_nand_controller *nandc)
{
	u32 nand_ctrl;

	/* kill onenand */
	FUNC2(nandc, SFLASHC_BURST_CFG, 0);
	FUNC2(nandc, FUNC0(nandc, NAND_DEV_CMD_VLD),
		    NAND_DEV_CMD_VLD_VAL);

	/* enable ADM or BAM DMA */
	if (nandc->props->is_bam) {
		nand_ctrl = FUNC1(nandc, NAND_CTRL);
		FUNC2(nandc, NAND_CTRL, nand_ctrl | BAM_MODE_EN);
	} else {
		FUNC2(nandc, NAND_FLASH_CHIP_SELECT, DM_EN);
	}

	/* save the original values of these registers */
	nandc->cmd1 = FUNC1(nandc, FUNC0(nandc, NAND_DEV_CMD1));
	nandc->vld = NAND_DEV_CMD_VLD_VAL;

	return 0;
}