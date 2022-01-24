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
struct pf_vf_bulletin_content {int dummy; } ;
struct bnx2x_virtf {int /*<<< orphan*/  vfqs; } ;
struct bnx2x {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (struct bnx2x*) ; 
 scalar_t__ BNX2X_STATE_OPEN ; 
 struct bnx2x_virtf* FUNC2 (struct bnx2x*,int) ; 
 struct pf_vf_bulletin_content* FUNC3 (struct bnx2x*,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*) ; 

__attribute__((used)) static int FUNC5(struct bnx2x *bp, int vfidx,
			    struct bnx2x_virtf **vf,
			    struct pf_vf_bulletin_content **bulletin,
			    bool test_queue)
{
	if (bp->state != BNX2X_STATE_OPEN) {
		FUNC0("PF is down - can't utilize iov-related functionality\n");
		return -EINVAL;
	}

	if (!FUNC4(bp)) {
		FUNC0("sriov is disabled - can't utilize iov-related functionality\n");
		return -EINVAL;
	}

	if (vfidx >= FUNC1(bp)) {
		FUNC0("VF is uninitialized - can't utilize iov-related functionality. vfidx was %d BNX2X_NR_VIRTFN was %d\n",
			  vfidx, FUNC1(bp));
		return -EINVAL;
	}

	/* init members */
	*vf = FUNC2(bp, vfidx);
	*bulletin = FUNC3(bp, vfidx);

	if (!*vf) {
		FUNC0("Unable to get VF structure for vfidx %d\n", vfidx);
		return -EINVAL;
	}

	if (test_queue && !(*vf)->vfqs) {
		FUNC0("vfqs struct is null. Was this invoked before dynamically enabling SR-IOV? vfidx was %d\n",
			  vfidx);
		return -EINVAL;
	}

	if (!*bulletin) {
		FUNC0("Bulletin Board struct is null for vfidx %d\n",
			  vfidx);
		return -EINVAL;
	}

	return 0;
}