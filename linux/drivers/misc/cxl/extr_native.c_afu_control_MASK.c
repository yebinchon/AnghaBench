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
struct cxl_afu {int enabled; int /*<<< orphan*/  afu_cntl_lock; int /*<<< orphan*/  adapter; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* link_ok ) (int /*<<< orphan*/ ,struct cxl_afu*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CXL_AFU_Cntl_An ; 
 int CXL_AFU_Cntl_An_RA ; 
 unsigned long CXL_TIMEOUT ; 
 int EBUSY ; 
 int EIO ; 
 unsigned long HZ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* cxl_ops ; 
 int FUNC1 (struct cxl_afu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cxl_afu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct cxl_afu*) ; 
 scalar_t__ FUNC9 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct cxl_afu*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct cxl_afu*,int,int) ; 

__attribute__((used)) static int FUNC12(struct cxl_afu *afu, u64 command, u64 clear,
		       u64 result, u64 mask, bool enabled)
{
	u64 AFU_Cntl;
	unsigned long timeout = jiffies + (HZ * CXL_TIMEOUT);
	int rc = 0;

	FUNC6(&afu->afu_cntl_lock);
	FUNC4("AFU command starting: %llx\n", command);

	FUNC10(afu, command);

	AFU_Cntl = FUNC1(afu, CXL_AFU_Cntl_An);
	FUNC2(afu, CXL_AFU_Cntl_An, (AFU_Cntl & ~clear) | command);

	AFU_Cntl = FUNC1(afu, CXL_AFU_Cntl_An);
	while ((AFU_Cntl & mask) != result) {
		if (FUNC9(jiffies, timeout)) {
			FUNC3(&afu->dev, "WARNING: AFU control timed out!\n");
			rc = -EBUSY;
			goto out;
		}

		if (!cxl_ops->link_ok(afu->adapter, afu)) {
			afu->enabled = enabled;
			rc = -EIO;
			goto out;
		}

		FUNC5("AFU control... (0x%016llx)\n",
				     AFU_Cntl | command);
		FUNC0();
		AFU_Cntl = FUNC1(afu, CXL_AFU_Cntl_An);
	}

	if (AFU_Cntl & CXL_AFU_Cntl_An_RA) {
		/*
		 * Workaround for a bug in the XSL used in the Mellanox CX4
		 * that fails to clear the RA bit after an AFU reset,
		 * preventing subsequent AFU resets from working.
		 */
		FUNC2(afu, CXL_AFU_Cntl_An, AFU_Cntl & ~CXL_AFU_Cntl_An_RA);
	}

	FUNC4("AFU command complete: %llx\n", command);
	afu->enabled = enabled;
out:
	FUNC11(afu, command, rc);
	FUNC7(&afu->afu_cntl_lock);

	return rc;
}