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
struct cxl_irq_info {int /*<<< orphan*/  dsisr; } ;
struct cxl_afu {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  CXL_PSL_TFC_An ; 
 int /*<<< orphan*/  CXL_PSL_TFC_An_A ; 
 int /*<<< orphan*/  CXL_PSL_TFC_An_AE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ FUNC0 (struct cxl_afu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cxl_afu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

irqreturn_t FUNC2(struct cxl_afu *afu, struct cxl_irq_info *irq_info)
{
	if (FUNC0(afu, irq_info->dsisr))
		FUNC1(afu, CXL_PSL_TFC_An, CXL_PSL_TFC_An_AE);
	else
		FUNC1(afu, CXL_PSL_TFC_An, CXL_PSL_TFC_An_A);

	return IRQ_HANDLED;
}