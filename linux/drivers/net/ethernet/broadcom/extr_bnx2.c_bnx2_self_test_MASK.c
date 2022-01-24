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
typedef  int u64 ;
struct net_device {int dummy; } ;
struct ethtool_test {int flags; } ;
struct bnx2 {scalar_t__ link_up; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2_DRV_MSG_CODE_DIAG ; 
 int BNX2_NUM_TESTS ; 
 int ETH_TEST_FL_FAILED ; 
 int ETH_TEST_FL_OFFLINE ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2*) ; 
 scalar_t__ FUNC6 (struct bnx2*) ; 
 scalar_t__ FUNC7 (struct bnx2*) ; 
 int FUNC8 (struct bnx2*) ; 
 scalar_t__ FUNC9 (struct bnx2*) ; 
 scalar_t__ FUNC10 (struct bnx2*) ; 
 scalar_t__ FUNC11 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC12 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 struct bnx2* FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC16(struct net_device *dev, struct ethtool_test *etest, u64 *buf)
{
	struct bnx2 *bp = FUNC14(dev);

	FUNC12(buf, 0, sizeof(u64) * BNX2_NUM_TESTS);
	if (etest->flags & ETH_TEST_FL_OFFLINE) {
		int i;

		FUNC3(bp, true);
		FUNC4(bp, BNX2_DRV_MSG_CODE_DIAG);
		FUNC0(bp);

		if (FUNC11(bp) != 0) {
			buf[0] = 1;
			etest->flags |= ETH_TEST_FL_FAILED;
		}
		if (FUNC9(bp) != 0) {
			buf[1] = 1;
			etest->flags |= ETH_TEST_FL_FAILED;
		}
		if ((buf[2] = FUNC8(bp)) != 0)
			etest->flags |= ETH_TEST_FL_FAILED;

		if (!FUNC15(bp->dev))
			FUNC5(bp);
		else {
			FUNC1(bp, 1);
			FUNC2(bp, true);
		}

		/* wait for link up */
		for (i = 0; i < 7; i++) {
			if (bp->link_up)
				break;
			FUNC13(1000);
		}
	}

	if (FUNC10(bp) != 0) {
		buf[3] = 1;
		etest->flags |= ETH_TEST_FL_FAILED;
	}
	if (FUNC6(bp) != 0) {
		buf[4] = 1;
		etest->flags |= ETH_TEST_FL_FAILED;
	}

	if (FUNC7(bp) != 0) {
		buf[5] = 1;
		etest->flags |= ETH_TEST_FL_FAILED;

	}
}