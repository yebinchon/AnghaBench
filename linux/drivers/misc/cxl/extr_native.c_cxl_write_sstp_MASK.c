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
typedef  int /*<<< orphan*/  u64 ;
struct cxl_afu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CXL_SSTP0_An ; 
 int /*<<< orphan*/  CXL_SSTP1_An ; 
 int FUNC0 (struct cxl_afu*) ; 
 int /*<<< orphan*/  FUNC1 (struct cxl_afu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct cxl_afu *afu, u64 sstp0, u64 sstp1)
{
	int rc;

	/* 1. Disable SSTP by writing 0 to SSTP1[V] */
	FUNC1(afu, CXL_SSTP1_An, 0);

	/* 2. Invalidate all SLB entries */
	if ((rc = FUNC0(afu)))
		return rc;

	/* 3. Set SSTP0_An */
	FUNC1(afu, CXL_SSTP0_An, sstp0);

	/* 4. Set SSTP1_An */
	FUNC1(afu, CXL_SSTP1_An, sstp1);

	return 0;
}