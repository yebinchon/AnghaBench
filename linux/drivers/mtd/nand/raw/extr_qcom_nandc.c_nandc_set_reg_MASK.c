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
typedef  int /*<<< orphan*/  u32 ;
struct qcom_nand_controller {struct nandc_regs* regs; } ;
struct nandc_regs {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (struct nandc_regs*,int) ; 

__attribute__((used)) static void FUNC2(struct qcom_nand_controller *nandc, int offset,
			  u32 val)
{
	struct nandc_regs *regs = nandc->regs;
	__le32 *reg;

	reg = FUNC1(regs, offset);

	if (reg)
		*reg = FUNC0(val);
}