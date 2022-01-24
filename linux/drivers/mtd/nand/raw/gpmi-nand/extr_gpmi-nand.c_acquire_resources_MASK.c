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
struct gpmi_nand_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPMI_NAND_BCH_REGS_ADDR_RES_NAME ; 
 int /*<<< orphan*/  GPMI_NAND_GPMI_REGS_ADDR_RES_NAME ; 
 int FUNC0 (struct gpmi_nand_data*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct gpmi_nand_data*) ; 
 int FUNC2 (struct gpmi_nand_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bch_irq ; 
 int FUNC3 (struct gpmi_nand_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct gpmi_nand_data*) ; 

__attribute__((used)) static int FUNC5(struct gpmi_nand_data *this)
{
	int ret;

	ret = FUNC2(this, GPMI_NAND_GPMI_REGS_ADDR_RES_NAME);
	if (ret)
		goto exit_regs;

	ret = FUNC2(this, GPMI_NAND_BCH_REGS_ADDR_RES_NAME);
	if (ret)
		goto exit_regs;

	ret = FUNC0(this, bch_irq);
	if (ret)
		goto exit_regs;

	ret = FUNC1(this);
	if (ret)
		goto exit_regs;

	ret = FUNC3(this);
	if (ret)
		goto exit_clock;
	return 0;

exit_clock:
	FUNC4(this);
exit_regs:
	return ret;
}