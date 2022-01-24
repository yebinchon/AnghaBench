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
typedef  int /*<<< orphan*/  s64 ;

/* Variables and functions */
 int /*<<< orphan*/  H_COPY_RDMA ; 
 int /*<<< orphan*/  FUNC0 () ; 
 long FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,long,...) ; 

__attribute__((used)) static inline long FUNC3(s64 length, u64 sliobn, u64 slioba,
			       u64 dliobn, u64 dlioba)
{
	long rc = 0;

	/* Ensure all writes to source memory are visible before hcall */
	FUNC0();
	FUNC2("ibmvmc: h_copy_rdma(0x%llx, 0x%llx, 0x%llx, 0x%llx, 0x%llx\n",
		 length, sliobn, slioba, dliobn, dlioba);
	rc = FUNC1(H_COPY_RDMA, length, sliobn, slioba,
				dliobn, dlioba);
	FUNC2("ibmvmc: h_copy_rdma rc = 0x%lx\n", rc);

	return rc;
}