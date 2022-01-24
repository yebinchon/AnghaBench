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
typedef  int /*<<< orphan*/  u32 ;
struct qcom_nand_controller {TYPE_1__* props; struct nandc_regs* regs; } ;
struct nandc_regs {int /*<<< orphan*/  erased_cw_detect_cfg_clr; int /*<<< orphan*/  erased_cw_detect_cfg_set; } ;
struct TYPE_2__ {scalar_t__ is_bam; } ;

/* Variables and functions */
 unsigned int NAND_BAM_NWD ; 
 int NAND_DEV_CMD1 ; 
 int NAND_DEV_CMD1_RESTORE ; 
 int NAND_DEV_CMD_VLD ; 
 int NAND_DEV_CMD_VLD_RESTORE ; 
 int NAND_ERASED_CW_DETECT_CFG ; 
 unsigned int NAND_ERASED_CW_SET ; 
 int NAND_EXEC_CMD ; 
 int NAND_FLASH_CMD ; 
 int FUNC0 (struct qcom_nand_controller*,int) ; 
 void* FUNC1 (struct nandc_regs*,int) ; 
 int FUNC2 (struct qcom_nand_controller*,int,int,void*,int,int) ; 
 int FUNC3 (struct qcom_nand_controller*,int,int,void*,int,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct qcom_nand_controller *nandc, int first,
			 int num_regs, unsigned int flags)
{
	bool flow_control = false;
	struct nandc_regs *regs = nandc->regs;
	void *vaddr;

	vaddr = FUNC1(regs, first);

	if (first == NAND_ERASED_CW_DETECT_CFG) {
		if (flags & NAND_ERASED_CW_SET)
			vaddr = &regs->erased_cw_detect_cfg_set;
		else
			vaddr = &regs->erased_cw_detect_cfg_clr;
	}

	if (first == NAND_EXEC_CMD)
		flags |= NAND_BAM_NWD;

	if (first == NAND_DEV_CMD1_RESTORE || first == NAND_DEV_CMD1)
		first = FUNC0(nandc, NAND_DEV_CMD1);

	if (first == NAND_DEV_CMD_VLD_RESTORE || first == NAND_DEV_CMD_VLD)
		first = FUNC0(nandc, NAND_DEV_CMD_VLD);

	if (nandc->props->is_bam)
		return FUNC3(nandc, false, first, vaddr,
					     num_regs, flags);

	if (first == NAND_FLASH_CMD)
		flow_control = true;

	return FUNC2(nandc, false, first, vaddr,
				 num_regs * sizeof(u32), flow_control);
}