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
struct net_device {int dummy; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int BNX2X_NUM_Q_STATS ; 
 int BNX2X_NUM_STATS ; 
 int FUNC0 (struct bnx2x*) ; 
 int BNX2X_PRI_FLAG_LEN ; 
 int EINVAL ; 
#define  ETH_SS_PRIV_FLAGS 130 
#define  ETH_SS_STATS 129 
#define  ETH_SS_TEST 128 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*) ; 
 struct bnx2x* FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, int stringset)
{
	struct bnx2x *bp = FUNC5(dev);
	int i, num_strings = 0;

	switch (stringset) {
	case ETH_SS_STATS:
		if (FUNC4(bp)) {
			num_strings = FUNC3(bp) *
				      BNX2X_NUM_Q_STATS;
		} else
			num_strings = 0;
		if (FUNC1(bp)) {
			for (i = 0; i < BNX2X_NUM_STATS; i++)
				if (!FUNC2(i))
					num_strings++;
		} else
			num_strings += BNX2X_NUM_STATS;

		return num_strings;

	case ETH_SS_TEST:
		return FUNC0(bp);

	case ETH_SS_PRIV_FLAGS:
		return BNX2X_PRI_FLAG_LEN;

	default:
		return -EINVAL;
	}
}