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
struct bnx2x {int num_queues; int num_cnic_queues; int num_ethernet_queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
#define  BNX2X_INT_MODE_INTX 130 
#define  BNX2X_INT_MODE_MSI 129 
#define  BNX2X_INT_MODE_MSIX 128 
 int EINVAL ; 
 scalar_t__ FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*) ; 
 int FUNC4 (struct bnx2x*) ; 
 int int_mode ; 

int FUNC5(struct bnx2x *bp)
{
	int rc = 0;

	if (FUNC2(bp) && int_mode != BNX2X_INT_MODE_MSIX) {
		FUNC1("VF not loaded since interrupt mode not msix\n");
		return -EINVAL;
	}

	switch (int_mode) {
	case BNX2X_INT_MODE_MSIX:
		/* attempt to enable msix */
		rc = FUNC4(bp);

		/* msix attained */
		if (!rc)
			return 0;

		/* vfs use only msix */
		if (rc && FUNC2(bp))
			return rc;

		/* failed to enable multiple MSI-X */
		FUNC0("Failed to enable multiple MSI-X (%d), set number of queues to %d\n",
			       bp->num_queues,
			       1 + bp->num_cnic_queues);

		/* fall through */
	case BNX2X_INT_MODE_MSI:
		FUNC3(bp);

		/* fall through */
	case BNX2X_INT_MODE_INTX:
		bp->num_ethernet_queues = 1;
		bp->num_queues = bp->num_ethernet_queues + bp->num_cnic_queues;
		FUNC0("set number of queues to 1\n");
		break;
	default:
		FUNC0("unknown value in int_mode module parameter\n");
		return -EINVAL;
	}
	return 0;
}