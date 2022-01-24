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
struct nand_chip {int dummy; } ;
struct qcom_nand_host {struct nand_chip chip; } ;
struct qcom_nand_controller {int vld; int cmd1; int buf_count; int /*<<< orphan*/  data_buffer; } ;

/* Variables and functions */
 int BAD_BLOCK_BYTE_NUM ; 
 int BAD_BLOCK_IN_SPARE_AREA ; 
 int CS_ACTIVE_BSY ; 
 int CW_PER_PAGE ; 
 int DEV0_CFG1_ECC_DISABLE ; 
 int ECC_CFG_ECC_DISABLE ; 
 int /*<<< orphan*/  FLASH_BUF_ACC ; 
 int LAST_PAGE ; 
 int /*<<< orphan*/  NAND_ADDR0 ; 
 int /*<<< orphan*/  NAND_ADDR1 ; 
 int /*<<< orphan*/  NAND_BAM_NEXT_SGL ; 
 int NAND_CMD_PARAM ; 
 int /*<<< orphan*/  NAND_DEV0_CFG0 ; 
 int /*<<< orphan*/  NAND_DEV0_CFG1 ; 
 int /*<<< orphan*/  NAND_DEV_CMD1 ; 
 int /*<<< orphan*/  NAND_DEV_CMD1_RESTORE ; 
 int /*<<< orphan*/  NAND_DEV_CMD_VLD ; 
 int /*<<< orphan*/  NAND_DEV_CMD_VLD_RESTORE ; 
 int /*<<< orphan*/  NAND_EBI2_ECC_BUF_CFG ; 
 int /*<<< orphan*/  NAND_EXEC_CMD ; 
 int /*<<< orphan*/  NAND_FLASH_CMD ; 
 int NAND_RECOVERY_CYCLES ; 
 int NUM_ADDR_CYCLES ; 
 int OP_PAGE_READ ; 
 int PAGE_ACC ; 
 int READ_ADDR ; 
 int READ_START_VLD ; 
 int SPARE_SIZE_BYTES ; 
 int UD_SIZE_BYTES ; 
 int WIDE_FLASH ; 
 int WR_RD_BSY_GAP ; 
 int /*<<< orphan*/  FUNC0 (struct qcom_nand_controller*,int) ; 
 struct qcom_nand_controller* FUNC1 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qcom_nand_controller*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct qcom_nand_controller*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct qcom_nand_controller*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct qcom_nand_controller*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct qcom_nand_host *host)
{
	struct nand_chip *chip = &host->chip;
	struct qcom_nand_controller *nandc = FUNC1(chip);

	/*
	 * NAND_CMD_PARAM is called before we know much about the FLASH chip
	 * in use. we configure the controller to perform a raw read of 512
	 * bytes to read onfi params
	 */
	FUNC4(nandc, NAND_FLASH_CMD, OP_PAGE_READ | PAGE_ACC | LAST_PAGE);
	FUNC4(nandc, NAND_ADDR0, 0);
	FUNC4(nandc, NAND_ADDR1, 0);
	FUNC4(nandc, NAND_DEV0_CFG0, 0 << CW_PER_PAGE
					| 512 << UD_SIZE_BYTES
					| 5 << NUM_ADDR_CYCLES
					| 0 << SPARE_SIZE_BYTES);
	FUNC4(nandc, NAND_DEV0_CFG1, 7 << NAND_RECOVERY_CYCLES
					| 0 << CS_ACTIVE_BSY
					| 17 << BAD_BLOCK_BYTE_NUM
					| 1 << BAD_BLOCK_IN_SPARE_AREA
					| 2 << WR_RD_BSY_GAP
					| 0 << WIDE_FLASH
					| 1 << DEV0_CFG1_ECC_DISABLE);
	FUNC4(nandc, NAND_EBI2_ECC_BUF_CFG, 1 << ECC_CFG_ECC_DISABLE);

	/* configure CMD1 and VLD for ONFI param probing */
	FUNC4(nandc, NAND_DEV_CMD_VLD,
		      (nandc->vld & ~READ_START_VLD));
	FUNC4(nandc, NAND_DEV_CMD1,
		      (nandc->cmd1 & ~(0xFF << READ_ADDR))
		      | NAND_CMD_PARAM << READ_ADDR);

	FUNC4(nandc, NAND_EXEC_CMD, 1);

	FUNC4(nandc, NAND_DEV_CMD1_RESTORE, nandc->cmd1);
	FUNC4(nandc, NAND_DEV_CMD_VLD_RESTORE, nandc->vld);
	FUNC3(nandc, 0, 0, 512, 1);

	FUNC6(nandc, NAND_DEV_CMD_VLD, 1, 0);
	FUNC6(nandc, NAND_DEV_CMD1, 1, NAND_BAM_NEXT_SGL);

	nandc->buf_count = 512;
	FUNC2(nandc->data_buffer, 0xff, nandc->buf_count);

	FUNC0(nandc, false);

	FUNC5(nandc, FLASH_BUF_ACC, nandc->data_buffer,
		      nandc->buf_count, 0);

	/* restore CMD1 and VLD regs */
	FUNC6(nandc, NAND_DEV_CMD1_RESTORE, 1, 0);
	FUNC6(nandc, NAND_DEV_CMD_VLD_RESTORE, 1, NAND_BAM_NEXT_SGL);

	return 0;
}