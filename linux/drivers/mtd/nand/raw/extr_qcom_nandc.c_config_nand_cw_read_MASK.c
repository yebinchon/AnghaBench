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
struct qcom_nand_controller {TYPE_1__* props; } ;
struct TYPE_2__ {scalar_t__ is_bam; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAND_BAM_NEXT_SGL ; 
 int /*<<< orphan*/  NAND_ERASED_CW_DETECT_STATUS ; 
 int /*<<< orphan*/  NAND_EXEC_CMD ; 
 int /*<<< orphan*/  NAND_FLASH_CMD ; 
 int /*<<< orphan*/  NAND_FLASH_STATUS ; 
 int /*<<< orphan*/  NAND_READ_LOCATION_0 ; 
 int /*<<< orphan*/  FUNC0 (struct qcom_nand_controller*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qcom_nand_controller*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct qcom_nand_controller *nandc, bool use_ecc)
{
	if (nandc->props->is_bam)
		FUNC1(nandc, NAND_READ_LOCATION_0, 4,
			      NAND_BAM_NEXT_SGL);

	FUNC1(nandc, NAND_FLASH_CMD, 1, NAND_BAM_NEXT_SGL);
	FUNC1(nandc, NAND_EXEC_CMD, 1, NAND_BAM_NEXT_SGL);

	if (use_ecc) {
		FUNC0(nandc, NAND_FLASH_STATUS, 2, 0);
		FUNC0(nandc, NAND_ERASED_CW_DETECT_STATUS, 1,
			     NAND_BAM_NEXT_SGL);
	} else {
		FUNC0(nandc, NAND_FLASH_STATUS, 1, NAND_BAM_NEXT_SGL);
	}
}