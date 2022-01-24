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
struct qcom_nand_controller {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAND_BAM_NEXT_SGL ; 
 int /*<<< orphan*/  NAND_EXEC_CMD ; 
 int /*<<< orphan*/  NAND_FLASH_CMD ; 
 int /*<<< orphan*/  NAND_FLASH_STATUS ; 
 int /*<<< orphan*/  NAND_READ_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct qcom_nand_controller*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qcom_nand_controller*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct qcom_nand_controller *nandc)
{
	FUNC1(nandc, NAND_FLASH_CMD, 1, NAND_BAM_NEXT_SGL);
	FUNC1(nandc, NAND_EXEC_CMD, 1, NAND_BAM_NEXT_SGL);

	FUNC0(nandc, NAND_FLASH_STATUS, 1, NAND_BAM_NEXT_SGL);

	FUNC1(nandc, NAND_FLASH_STATUS, 1, 0);
	FUNC1(nandc, NAND_READ_STATUS, 1, NAND_BAM_NEXT_SGL);
}