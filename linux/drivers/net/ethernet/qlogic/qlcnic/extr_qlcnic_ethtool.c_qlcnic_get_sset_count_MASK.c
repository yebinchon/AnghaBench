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
struct qlcnic_adapter {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  ETH_SS_STATS 129 
#define  ETH_SS_TEST 128 
 int QLCNIC_TEST_LEN ; 
 struct qlcnic_adapter* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct qlcnic_adapter*) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev, int sset)
{

	struct qlcnic_adapter *adapter = FUNC0(dev);
	switch (sset) {
	case ETH_SS_TEST:
		return QLCNIC_TEST_LEN;
	case ETH_SS_STATS:
		return FUNC1(adapter);
	default:
		return -EOPNOTSUPP;
	}
}