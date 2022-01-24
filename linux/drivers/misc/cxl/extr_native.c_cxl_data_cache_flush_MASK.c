#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct cxl {int /*<<< orphan*/  dev; TYPE_1__* native; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* link_ok ) (struct cxl*,int /*<<< orphan*/ *) ;} ;
struct TYPE_3__ {scalar_t__ no_data_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  CXL_PSL_Control ; 
 int CXL_PSL_Control_Fr ; 
 int CXL_PSL_Control_Fs_Complete ; 
 int CXL_PSL_Control_Fs_MASK ; 
 unsigned long CXL_TIMEOUT ; 
 int EBUSY ; 
 int EIO ; 
 unsigned long HZ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__* cxl_ops ; 
 int FUNC1 (struct cxl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cxl*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct cxl*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long) ; 

int FUNC7(struct cxl *adapter)
{
	u64 reg;
	unsigned long timeout = jiffies + (HZ * CXL_TIMEOUT);

	/*
	 * Do a datacache flush only if datacache is available.
	 * In case of PSL9D datacache absent hence flush operation.
	 * would timeout.
	 */
	if (adapter->native->no_data_cache) {
		FUNC4("No PSL data cache. Ignoring cache flush req.\n");
		return 0;
	}

	FUNC4("Flushing data cache\n");
	reg = FUNC1(adapter, CXL_PSL_Control);
	reg |= CXL_PSL_Control_Fr;
	FUNC2(adapter, CXL_PSL_Control, reg);

	reg = FUNC1(adapter, CXL_PSL_Control);
	while ((reg & CXL_PSL_Control_Fs_MASK) != CXL_PSL_Control_Fs_Complete) {
		if (FUNC6(jiffies, timeout)) {
			FUNC3(&adapter->dev, "WARNING: cache flush timed out!\n");
			return -EBUSY;
		}

		if (!cxl_ops->link_ok(adapter, NULL)) {
			FUNC3(&adapter->dev, "WARNING: link down when flushing cache\n");
			return -EIO;
		}
		FUNC0();
		reg = FUNC1(adapter, CXL_PSL_Control);
	}

	reg &= ~CXL_PSL_Control_Fr;
	FUNC2(adapter, CXL_PSL_Control, reg);
	return 0;
}