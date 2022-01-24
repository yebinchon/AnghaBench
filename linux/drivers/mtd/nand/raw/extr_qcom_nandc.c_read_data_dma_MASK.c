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
typedef  int /*<<< orphan*/  u8 ;
struct qcom_nand_controller {TYPE_1__* props; } ;
struct TYPE_2__ {scalar_t__ is_bam; } ;

/* Variables and functions */
 int FUNC0 (struct qcom_nand_controller*,int,int,int /*<<< orphan*/  const*,int,int) ; 
 int FUNC1 (struct qcom_nand_controller*,int,int /*<<< orphan*/  const*,int,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct qcom_nand_controller *nandc, int reg_off,
			 const u8 *vaddr, int size, unsigned int flags)
{
	if (nandc->props->is_bam)
		return FUNC1(nandc, true, vaddr, size, flags);

	return FUNC0(nandc, true, reg_off, vaddr, size, false);
}