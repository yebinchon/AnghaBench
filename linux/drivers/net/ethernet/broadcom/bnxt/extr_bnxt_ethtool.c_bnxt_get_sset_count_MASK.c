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
struct bnxt {int num_tests; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  ETH_SS_STATS 129 
#define  ETH_SS_TEST 128 
 int FUNC0 (struct bnxt*) ; 
 struct bnxt* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev, int sset)
{
	struct bnxt *bp = FUNC1(dev);

	switch (sset) {
	case ETH_SS_STATS:
		return FUNC0(bp);
	case ETH_SS_TEST:
		if (!bp->num_tests)
			return -EOPNOTSUPP;
		return bp->num_tests;
	default:
		return -EOPNOTSUPP;
	}
}