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
struct cxl {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* link_ok ) (struct cxl*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CXL_PSL_AFUSEL ; 
 int /*<<< orphan*/  CXL_PSL_AFUSEL_A ; 
 int /*<<< orphan*/  CXL_PSL_SLBIA ; 
 int /*<<< orphan*/  CXL_PSL_TLBIA ; 
 unsigned long CXL_TIMEOUT ; 
 int /*<<< orphan*/  CXL_TLB_SLB_IQ_ALL ; 
 int CXL_TLB_SLB_P ; 
 int EBUSY ; 
 int EIO ; 
 unsigned long HZ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* cxl_ops ; 
 int FUNC1 (struct cxl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cxl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct cxl*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct cxl*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (unsigned long,unsigned long) ; 

int FUNC8(struct cxl *adapter)
{
	unsigned long timeout = jiffies + (HZ * CXL_TIMEOUT);

	FUNC4("CXL adapter wide TLBIA & SLBIA\n");

	FUNC2(adapter, CXL_PSL_AFUSEL, CXL_PSL_AFUSEL_A);

	FUNC2(adapter, CXL_PSL_TLBIA, CXL_TLB_SLB_IQ_ALL);
	while (FUNC1(adapter, CXL_PSL_TLBIA) & CXL_TLB_SLB_P) {
		if (FUNC7(jiffies, timeout)) {
			FUNC3(&adapter->dev, "WARNING: CXL adapter wide TLBIA timed out!\n");
			return -EBUSY;
		}
		if (!cxl_ops->link_ok(adapter, NULL))
			return -EIO;
		FUNC0();
	}

	FUNC2(adapter, CXL_PSL_SLBIA, CXL_TLB_SLB_IQ_ALL);
	while (FUNC1(adapter, CXL_PSL_SLBIA) & CXL_TLB_SLB_P) {
		if (FUNC7(jiffies, timeout)) {
			FUNC3(&adapter->dev, "WARNING: CXL adapter wide SLBIA timed out!\n");
			return -EBUSY;
		}
		if (!cxl_ops->link_ok(adapter, NULL))
			return -EIO;
		FUNC0();
	}
	return 0;
}