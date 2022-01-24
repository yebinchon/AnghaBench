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
typedef  int u64 ;
struct cxl_afu {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  CXL_AFU_DEBUG_An ; 
 int /*<<< orphan*/  CXL_AFU_ERR_An ; 
 int /*<<< orphan*/  CXL_PSL_DSISR_An ; 
 int /*<<< orphan*/  CXL_PSL_ErrStat_An ; 
 int /*<<< orphan*/  CXL_PSL_FIR_SLICE_An ; 
 int /*<<< orphan*/  CXL_PSL_SERR_An ; 
 int CXL_PSL_SERR_An_IRQS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct cxl_afu*,int) ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (struct cxl_afu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cxl_afu*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct cxl_afu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *data)
{
	struct cxl_afu *afu = data;
	u64 errstat, serr, afu_error, dsisr;
	u64 fir_slice, afu_debug, irq_mask;

	/*
	 * slice err interrupt is only used with full PSL (no XSL)
	 */
	serr = FUNC2(afu, CXL_PSL_SERR_An);
	errstat = FUNC4(afu, CXL_PSL_ErrStat_An);
	afu_error = FUNC4(afu, CXL_AFU_ERR_An);
	dsisr = FUNC4(afu, CXL_PSL_DSISR_An);
	FUNC0(afu, serr);

	if (FUNC1()) {
		fir_slice = FUNC2(afu, CXL_PSL_FIR_SLICE_An);
		afu_debug = FUNC2(afu, CXL_AFU_DEBUG_An);
		FUNC5(&afu->dev, "PSL_FIR_SLICE_An: 0x%016llx\n", fir_slice);
		FUNC5(&afu->dev, "CXL_PSL_AFU_DEBUG_An: 0x%016llx\n", afu_debug);
	}
	FUNC5(&afu->dev, "CXL_PSL_ErrStat_An: 0x%016llx\n", errstat);
	FUNC5(&afu->dev, "AFU_ERR_An: 0x%.16llx\n", afu_error);
	FUNC5(&afu->dev, "PSL_DSISR_An: 0x%.16llx\n", dsisr);

	/* mask off the IRQ so it won't retrigger until the AFU is reset */
	irq_mask = (serr & CXL_PSL_SERR_An_IRQS) >> 32;
	serr |= irq_mask;
	FUNC3(afu, CXL_PSL_SERR_An, serr);
	FUNC6(&afu->dev, "Further such interrupts will be masked until the AFU is reset\n");

	return IRQ_HANDLED;
}