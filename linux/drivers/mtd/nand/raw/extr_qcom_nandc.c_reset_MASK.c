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
struct qcom_nand_controller {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAND_BAM_NEXT_SGL ; 
 int /*<<< orphan*/  NAND_EXEC_CMD ; 
 int /*<<< orphan*/  NAND_FLASH_CMD ; 
 int /*<<< orphan*/  NAND_FLASH_STATUS ; 
 int OP_RESET_DEVICE ; 
 struct qcom_nand_controller* FUNC0 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct qcom_nand_controller*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct qcom_nand_controller*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qcom_nand_controller*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct qcom_nand_host *host)
{
	struct nand_chip *chip = &host->chip;
	struct qcom_nand_controller *nandc = FUNC0(chip);

	FUNC1(nandc, NAND_FLASH_CMD, OP_RESET_DEVICE);
	FUNC1(nandc, NAND_EXEC_CMD, 1);

	FUNC3(nandc, NAND_FLASH_CMD, 1, NAND_BAM_NEXT_SGL);
	FUNC3(nandc, NAND_EXEC_CMD, 1, NAND_BAM_NEXT_SGL);

	FUNC2(nandc, NAND_FLASH_STATUS, 1, NAND_BAM_NEXT_SGL);

	return 0;
}