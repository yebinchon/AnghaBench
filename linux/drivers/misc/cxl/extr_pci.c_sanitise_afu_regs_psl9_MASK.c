#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct cxl_afu {int /*<<< orphan*/  dev; TYPE_3__* adapter; } ;
struct TYPE_8__ {scalar_t__ (* afu_reset ) (struct cxl_afu*) ;} ;
struct TYPE_7__ {TYPE_2__* native; } ;
struct TYPE_6__ {TYPE_1__* sl_ops; } ;
struct TYPE_5__ {scalar_t__ register_serr_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CXL_AFU_Cntl_An ; 
 int CXL_AFU_Cntl_An_ES_Disabled ; 
 int CXL_AFU_Cntl_An_ES_MASK ; 
 int CXL_PSL9_DSISR_An_TF ; 
 int /*<<< orphan*/  CXL_PSL_AMBAR_An ; 
 int /*<<< orphan*/  CXL_PSL_DSISR_An ; 
 int /*<<< orphan*/  CXL_PSL_ErrStat_An ; 
 int /*<<< orphan*/  CXL_PSL_SERR_An ; 
 int /*<<< orphan*/  CXL_PSL_SPAP_An ; 
 int /*<<< orphan*/  CXL_PSL_TFC_An ; 
 int CXL_PSL_TFC_An_A ; 
 int CXL_PSL_TFC_An_AE ; 
 int EIO ; 
 scalar_t__ FUNC0 (struct cxl_afu*) ; 
 TYPE_4__* cxl_ops ; 
 int FUNC1 (struct cxl_afu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cxl_afu*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct cxl_afu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cxl_afu*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct cxl_afu*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC7 (struct cxl_afu*) ; 

__attribute__((used)) static int FUNC8(struct cxl_afu *afu)
{
	u64 reg;

	/*
	 * Clear out any regs that contain either an IVTE or address or may be
	 * waiting on an acknowledgment to try to be a bit safer as we bring
	 * it online
	 */
	reg = FUNC3(afu, CXL_AFU_Cntl_An);
	if ((reg & CXL_AFU_Cntl_An_ES_MASK) != CXL_AFU_Cntl_An_ES_Disabled) {
		FUNC6(&afu->dev, "WARNING: AFU was not disabled: %#016llx\n", reg);
		if (cxl_ops->afu_reset(afu))
			return -EIO;
		if (FUNC0(afu))
			return -EIO;
		if (FUNC5(afu))
			return -EIO;
	}
	FUNC2(afu, CXL_PSL_SPAP_An, 0x0000000000000000);
	FUNC2(afu, CXL_PSL_AMBAR_An, 0x0000000000000000);
	reg = FUNC3(afu, CXL_PSL_DSISR_An);
	if (reg) {
		FUNC6(&afu->dev, "AFU had pending DSISR: %#016llx\n", reg);
		if (reg & CXL_PSL9_DSISR_An_TF)
			FUNC4(afu, CXL_PSL_TFC_An, CXL_PSL_TFC_An_AE);
		else
			FUNC4(afu, CXL_PSL_TFC_An, CXL_PSL_TFC_An_A);
	}
	if (afu->adapter->native->sl_ops->register_serr_irq) {
		reg = FUNC1(afu, CXL_PSL_SERR_An);
		if (reg) {
			if (reg & ~0x000000007fffffff)
				FUNC6(&afu->dev, "AFU had pending SERR: %#016llx\n", reg);
			FUNC2(afu, CXL_PSL_SERR_An, reg & ~0xffff);
		}
	}
	reg = FUNC3(afu, CXL_PSL_ErrStat_An);
	if (reg) {
		FUNC6(&afu->dev, "AFU had pending error status: %#016llx\n", reg);
		FUNC4(afu, CXL_PSL_ErrStat_An, reg);
	}

	return 0;
}