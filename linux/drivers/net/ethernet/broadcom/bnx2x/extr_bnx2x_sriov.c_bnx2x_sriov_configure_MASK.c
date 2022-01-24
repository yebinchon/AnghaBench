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
struct pci_dev {int dummy; } ;
struct bnx2x {scalar_t__ state; int requested_nr_virtfn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  BNX2X_MSG_IOV ; 
 int FUNC1 (struct bnx2x*) ; 
 scalar_t__ BNX2X_STATE_OPEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*) ; 
 int FUNC5 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*,int) ; 
 struct bnx2x* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 

int FUNC9(struct pci_dev *dev, int num_vfs_param)
{
	struct bnx2x *bp = FUNC7(FUNC8(dev));

	if (!FUNC3(bp)) {
		FUNC0("failed to configure SR-IOV since vfdb was not allocated. Check dmesg for errors in probe stage\n");
		return -EINVAL;
	}

	FUNC2(BNX2X_MSG_IOV, "bnx2x_sriov_configure called with %d, BNX2X_NR_VIRTFN(bp) was %d\n",
	   num_vfs_param, FUNC1(bp));

	/* HW channel is only operational when PF is up */
	if (bp->state != BNX2X_STATE_OPEN) {
		FUNC0("VF num configuration via sysfs not supported while PF is down\n");
		return -EINVAL;
	}

	/* we are always bound by the total_vfs in the configuration space */
	if (num_vfs_param > FUNC1(bp)) {
		FUNC0("truncating requested number of VFs (%d) down to maximum allowed (%d)\n",
			  num_vfs_param, FUNC1(bp));
		num_vfs_param = FUNC1(bp);
	}

	bp->requested_nr_virtfn = num_vfs_param;
	if (num_vfs_param == 0) {
		FUNC6(bp, false);
		FUNC4(bp);
		return 0;
	} else {
		return FUNC5(bp);
	}
}