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
typedef  int /*<<< orphan*/  u64 ;
struct cxl {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* link_ok ) (struct cxl*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 unsigned long CXL_TIMEOUT ; 
 int /*<<< orphan*/  CXL_XSL9_IERAT ; 
 int /*<<< orphan*/  CXL_XSL9_IERAT_IALL ; 
 int CXL_XSL9_IERAT_IINPROG ; 
 int /*<<< orphan*/  CXL_XSL9_IERAT_INVR ; 
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
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct cxl*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (unsigned long,unsigned long) ; 

int FUNC8(struct cxl *adapter)
{
	unsigned long timeout = jiffies + (HZ * CXL_TIMEOUT);
	u64 ierat;

	FUNC4("CXL adapter - invalidation of all ERAT entries\n");

	/* Invalidates all ERAT entries for Radix or HPT */
	ierat = CXL_XSL9_IERAT_IALL;
	if (FUNC5())
		ierat |= CXL_XSL9_IERAT_INVR;
	FUNC2(adapter, CXL_XSL9_IERAT, ierat);

	while (FUNC1(adapter, CXL_XSL9_IERAT) & CXL_XSL9_IERAT_IINPROG) {
		if (FUNC7(jiffies, timeout)) {
			FUNC3(&adapter->dev,
			"WARNING: CXL adapter invalidation of all ERAT entries timed out!\n");
			return -EBUSY;
		}
		if (!cxl_ops->link_ok(adapter, NULL))
			return -EIO;
		FUNC0();
	}
	return 0;
}