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
typedef  int u64 ;
struct cxl_afu {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* link_ok ) (int /*<<< orphan*/ ,struct cxl_afu*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CXL_AFU_Cntl_An ; 
 int CXL_AFU_Cntl_An_ES_Disabled ; 
 int CXL_AFU_Cntl_An_ES_MASK ; 
 int CXL_PSL9_DSISR_An_TF ; 
 int /*<<< orphan*/  CXL_PSL_DAR_An ; 
 int /*<<< orphan*/  CXL_PSL_DSISR_An ; 
 int CXL_PSL_DSISR_TRANS ; 
 int /*<<< orphan*/  CXL_PSL_SCNTL_An ; 
 int CXL_PSL_SCNTL_An_Pc ; 
 int CXL_PSL_SCNTL_An_Ps_MASK ; 
 int CXL_PSL_SCNTL_An_Ps_Pending ; 
 int /*<<< orphan*/  CXL_PSL_TFC_An ; 
 int /*<<< orphan*/  CXL_PSL_TFC_An_A ; 
 int /*<<< orphan*/  CXL_PSL_TFC_An_AE ; 
 unsigned long CXL_TIMEOUT ; 
 int EBUSY ; 
 int EIO ; 
 unsigned long HZ ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct cxl_afu*) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 TYPE_1__* cxl_ops ; 
 int FUNC5 (struct cxl_afu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cxl_afu*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct cxl_afu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cxl_afu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 unsigned long jiffies ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct cxl_afu*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct cxl_afu*) ; 
 scalar_t__ FUNC16 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (struct cxl_afu*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct cxl_afu*,int,int) ; 

int FUNC19(struct cxl_afu *afu)
{
	u64 PSL_CNTL = FUNC5(afu, CXL_PSL_SCNTL_An);
	u64 AFU_Cntl = FUNC7(afu, CXL_AFU_Cntl_An);
	u64 dsisr, dar;
	u64 start, end;
	u64 trans_fault = 0x0ULL;
	unsigned long timeout = jiffies + (HZ * CXL_TIMEOUT);
	int rc = 0;

	FUNC17(afu, CXL_PSL_SCNTL_An_Pc);

	FUNC12("PSL purge request\n");

	if (FUNC3())
		trans_fault = CXL_PSL_DSISR_TRANS;
	if (FUNC4())
		trans_fault = CXL_PSL9_DSISR_An_TF;

	if (!cxl_ops->link_ok(afu->adapter, afu)) {
		FUNC10(&afu->dev, "PSL Purge called with link down, ignoring\n");
		rc = -EIO;
		goto out;
	}

	if ((AFU_Cntl & CXL_AFU_Cntl_An_ES_MASK) != CXL_AFU_Cntl_An_ES_Disabled) {
		FUNC0(1, "psl_purge request while AFU not disabled!\n");
		FUNC2(afu);
	}

	FUNC6(afu, CXL_PSL_SCNTL_An,
		       PSL_CNTL | CXL_PSL_SCNTL_An_Pc);
	start = FUNC11();
	PSL_CNTL = FUNC5(afu, CXL_PSL_SCNTL_An);
	while ((PSL_CNTL &  CXL_PSL_SCNTL_An_Ps_MASK)
			== CXL_PSL_SCNTL_An_Ps_Pending) {
		if (FUNC16(jiffies, timeout)) {
			FUNC10(&afu->dev, "WARNING: PSL Purge timed out!\n");
			rc = -EBUSY;
			goto out;
		}
		if (!cxl_ops->link_ok(afu->adapter, afu)) {
			rc = -EIO;
			goto out;
		}

		dsisr = FUNC7(afu, CXL_PSL_DSISR_An);
		FUNC13("PSL purging... PSL_CNTL: 0x%016llx  PSL_DSISR: 0x%016llx\n",
				     PSL_CNTL, dsisr);

		if (dsisr & trans_fault) {
			dar = FUNC7(afu, CXL_PSL_DAR_An);
			FUNC9(&afu->dev, "PSL purge terminating pending translation, DSISR: 0x%016llx, DAR: 0x%016llx\n",
				   dsisr, dar);
			FUNC8(afu, CXL_PSL_TFC_An, CXL_PSL_TFC_An_AE);
		} else if (dsisr) {
			FUNC9(&afu->dev, "PSL purge acknowledging pending non-translation fault, DSISR: 0x%016llx\n",
				   dsisr);
			FUNC8(afu, CXL_PSL_TFC_An, CXL_PSL_TFC_An_A);
		} else {
			FUNC1();
		}
		PSL_CNTL = FUNC5(afu, CXL_PSL_SCNTL_An);
	}
	end = FUNC11();
	FUNC12("PSL purged in %lld ns\n", end - start);

	FUNC6(afu, CXL_PSL_SCNTL_An,
		       PSL_CNTL & ~CXL_PSL_SCNTL_An_Pc);
out:
	FUNC18(afu, CXL_PSL_SCNTL_An_Pc, rc);
	return rc;
}