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
struct cxl {int slices; int /*<<< orphan*/  afu_list_lock; scalar_t__* afu; } ;

/* Variables and functions */
 int /*<<< orphan*/  CXL_PSL_SLICE_TRACE ; 
 int /*<<< orphan*/  CXL_PSL_TRACE ; 
 int /*<<< orphan*/  FUNC0 (struct cxl*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct cxl *adapter)
{
	int slice;

	/* Stop the trace */
	FUNC0(adapter, CXL_PSL_TRACE, 0x8000000000000017LL);

	/* Stop the slice traces */
	FUNC2(&adapter->afu_list_lock);
	for (slice = 0; slice < adapter->slices; slice++) {
		if (adapter->afu[slice])
			FUNC1(adapter->afu[slice], CXL_PSL_SLICE_TRACE,
				      0x8000000000000000LL);
	}
	FUNC3(&adapter->afu_list_lock);
}