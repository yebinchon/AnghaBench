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
struct TYPE_2__ {int num_tc; } ;
struct qede_dev {int /*<<< orphan*/  xdp_prog; TYPE_1__ dev_info; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qede_dev*,int /*<<< orphan*/ ,char*,int) ; 
 int EINVAL ; 
#define  ETH_SS_PRIV_FLAGS 130 
#define  ETH_SS_STATS 129 
#define  ETH_SS_TEST 128 
 int /*<<< orphan*/  FUNC1 (struct qede_dev*) ; 
 int QEDE_ETHTOOL_TEST_MAX ; 
 int QEDE_NUM_RQSTATS ; 
 int QEDE_NUM_STATS ; 
 int QEDE_NUM_TQSTATS ; 
 int QEDE_PRI_FLAG_LEN ; 
 int FUNC2 (struct qede_dev*) ; 
 int FUNC3 (struct qede_dev*) ; 
 int /*<<< orphan*/  QED_MSG_DEBUG ; 
 struct qede_dev* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct qede_dev*,int) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, int stringset)
{
	struct qede_dev *edev = FUNC4(dev);
	int num_stats = QEDE_NUM_STATS, i;

	switch (stringset) {
	case ETH_SS_STATS:
		for (i = 0; i < QEDE_NUM_STATS; i++)
			if (FUNC5(edev, i))
				num_stats--;

		/* Account for the Regular Tx statistics */
		num_stats += FUNC3(edev) * QEDE_NUM_TQSTATS *
				edev->dev_info.num_tc;

		/* Account for the Regular Rx statistics */
		num_stats += FUNC2(edev) * QEDE_NUM_RQSTATS;

		/* Account for XDP statistics [if needed] */
		if (edev->xdp_prog)
			num_stats += FUNC2(edev) * QEDE_NUM_TQSTATS;
		return num_stats;

	case ETH_SS_PRIV_FLAGS:
		return QEDE_PRI_FLAG_LEN;
	case ETH_SS_TEST:
		if (!FUNC1(edev))
			return QEDE_ETHTOOL_TEST_MAX;
		else
			return 0;
	default:
		FUNC0(edev, QED_MSG_DEBUG,
			   "Unsupported stringset 0x%08x\n", stringset);
		return -EINVAL;
	}
}