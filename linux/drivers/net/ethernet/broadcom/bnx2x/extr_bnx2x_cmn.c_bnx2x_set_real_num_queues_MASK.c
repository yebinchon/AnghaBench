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
struct bnx2x {int max_cos; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  NETIF_MSG_IFUP ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct bnx2x *bp, int include_cnic)
{
	int rc, tx, rx;

	tx = FUNC1(bp) * bp->max_cos;
	rx = FUNC1(bp);

/* account for fcoe queue */
	if (include_cnic && !FUNC3(bp)) {
		rx++;
		tx++;
	}

	rc = FUNC5(bp->dev, tx);
	if (rc) {
		FUNC0("Failed to set real number of Tx queues: %d\n", rc);
		return rc;
	}
	rc = FUNC4(bp->dev, rx);
	if (rc) {
		FUNC0("Failed to set real number of Rx queues: %d\n", rc);
		return rc;
	}

	FUNC2(NETIF_MSG_IFUP, "Setting real num queues to (tx, rx) (%d, %d)\n",
			  tx, rx);

	return rc;
}