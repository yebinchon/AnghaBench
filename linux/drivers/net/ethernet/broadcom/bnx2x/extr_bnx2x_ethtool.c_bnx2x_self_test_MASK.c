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
typedef  int u8 ;
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct ethtool_test {int flags; } ;
struct TYPE_2__ {int link_status; int link_up; } ;
struct bnx2x {scalar_t__ recovery_state; TYPE_1__ link_vars; int /*<<< orphan*/  dev; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_MSG_ETHTOOL ; 
 int /*<<< orphan*/  BNX2X_MSG_IOV ; 
 int FUNC0 (struct bnx2x*) ; 
 scalar_t__ BNX2X_RECOVERY_DONE ; 
 int FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int ETH_TEST_FL_EXTERNAL_LB ; 
 int ETH_TEST_FL_EXTERNAL_LB_DONE ; 
 int ETH_TEST_FL_FAILED ; 
 int ETH_TEST_FL_OFFLINE ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*) ; 
 int LINK_STATUS_SERDES_LINK ; 
 int /*<<< orphan*/  LOAD_DIAG ; 
 int /*<<< orphan*/  LOAD_NORMAL ; 
 scalar_t__ NIG_REG_EGRESS_UMP0_IN_EN ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UNLOAD_NORMAL ; 
 scalar_t__ FUNC6 (struct bnx2x*,int) ; 
 int FUNC7 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2x*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct bnx2x*) ; 
 scalar_t__ FUNC10 (struct bnx2x*) ; 
 int FUNC11 (struct bnx2x*) ; 
 scalar_t__ FUNC12 (struct bnx2x*) ; 
 scalar_t__ FUNC13 (struct bnx2x*) ; 
 scalar_t__ FUNC14 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC15 (struct bnx2x*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*) ; 
 struct bnx2x* FUNC19 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct net_device*) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC22(struct net_device *dev,
			    struct ethtool_test *etest, u64 *buf)
{
	struct bnx2x *bp = FUNC19(dev);
	u8 is_serdes, link_up;
	int rc, cnt = 0;

	if (FUNC21(bp->pdev)) {
		FUNC2(BNX2X_MSG_IOV,
		   "VFs are enabled, can not perform self test\n");
		return;
	}

	if (bp->recovery_state != BNX2X_RECOVERY_DONE) {
		FUNC18(bp->dev,
			   "Handling parity error recovery. Try again later\n");
		etest->flags |= ETH_TEST_FL_FAILED;
		return;
	}

	FUNC2(BNX2X_MSG_ETHTOOL,
	   "Self-test command parameters: offline = %d, external_lb = %d\n",
	   (etest->flags & ETH_TEST_FL_OFFLINE),
	   (etest->flags & ETH_TEST_FL_EXTERNAL_LB)>>2);

	FUNC16(buf, 0, sizeof(u64) * FUNC0(bp));

	if (FUNC13(bp) != 0) {
		if (!FUNC3(bp))
			buf[4] = 1;
		else
			buf[0] = 1;
		etest->flags |= ETH_TEST_FL_FAILED;
	}

	if (!FUNC20(dev)) {
		FUNC2(BNX2X_MSG_ETHTOOL, "Interface is down\n");
		return;
	}

	is_serdes = (bp->link_vars.link_status & LINK_STATUS_SERDES_LINK) > 0;
	link_up = bp->link_vars.link_up;
	/* offline tests are not supported in MF mode */
	if ((etest->flags & ETH_TEST_FL_OFFLINE) && !FUNC3(bp)) {
		int port = FUNC1(bp);
		u32 val;

		/* save current value of input enable for TX port IF */
		val = FUNC4(bp, NIG_REG_EGRESS_UMP0_IN_EN + port*4);
		/* disable input for TX port IF */
		FUNC5(bp, NIG_REG_EGRESS_UMP0_IN_EN + port*4, 0);

		FUNC8(bp, UNLOAD_NORMAL, false);
		rc = FUNC7(bp, LOAD_DIAG);
		if (rc) {
			etest->flags |= ETH_TEST_FL_FAILED;
			FUNC2(BNX2X_MSG_ETHTOOL,
			   "Can't perform self-test, nic_load (for offline) failed\n");
			return;
		}

		/* wait until link state is restored */
		FUNC15(bp, 1, is_serdes);

		if (FUNC14(bp) != 0) {
			buf[0] = 1;
			etest->flags |= ETH_TEST_FL_FAILED;
		}
		if (FUNC12(bp) != 0) {
			buf[1] = 1;
			etest->flags |= ETH_TEST_FL_FAILED;
		}

		buf[2] = FUNC11(bp); /* internal LB */
		if (buf[2] != 0)
			etest->flags |= ETH_TEST_FL_FAILED;

		if (etest->flags & ETH_TEST_FL_EXTERNAL_LB) {
			buf[3] = FUNC9(bp); /* external LB */
			if (buf[3] != 0)
				etest->flags |= ETH_TEST_FL_FAILED;
			etest->flags |= ETH_TEST_FL_EXTERNAL_LB_DONE;
		}

		FUNC8(bp, UNLOAD_NORMAL, false);

		/* restore input for TX port IF */
		FUNC5(bp, NIG_REG_EGRESS_UMP0_IN_EN + port*4, val);
		rc = FUNC7(bp, LOAD_NORMAL);
		if (rc) {
			etest->flags |= ETH_TEST_FL_FAILED;
			FUNC2(BNX2X_MSG_ETHTOOL,
			   "Can't perform self-test, nic_load (for online) failed\n");
			return;
		}
		/* wait until link state is restored */
		FUNC15(bp, link_up, is_serdes);
	}

	if (FUNC10(bp) != 0) {
		if (!FUNC3(bp))
			buf[5] = 1;
		else
			buf[1] = 1;
		etest->flags |= ETH_TEST_FL_FAILED;
	}

	if (link_up) {
		cnt = 100;
		while (FUNC6(bp, is_serdes) && --cnt)
			FUNC17(20);
	}

	if (!cnt) {
		if (!FUNC3(bp))
			buf[6] = 1;
		else
			buf[2] = 1;
		etest->flags |= ETH_TEST_FL_FAILED;
	}
}