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
typedef  int u8 ;
struct tc_mqprio_qopt {int num_tc; int /*<<< orphan*/  hw; } ;
struct net_device {int real_num_tx_queues; } ;
typedef  enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  TC_MQPRIO_HW_OFFLOAD_TCS ; 
 int TC_SETUP_QDISC_MQPRIO ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int,int,int) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, enum tc_setup_type type,
			  void *type_data)
{
	struct tc_mqprio_qopt *mqprio = type_data;
	u8 num_tc;
	int i;

	/* setup tc must be called under rtnl lock */
	FUNC0();

	if (type != TC_SETUP_QDISC_MQPRIO)
		return -EOPNOTSUPP;

	mqprio->hw = TC_MQPRIO_HW_OFFLOAD_TCS;
	num_tc = mqprio->num_tc;

	/* Sanity-check the number of traffic classes requested */
	if ((dev->real_num_tx_queues <= 1) ||
	    (dev->real_num_tx_queues < num_tc))
		return -EINVAL;

	/* Configure traffic class to queue mappings */
	if (num_tc) {
		FUNC2(dev, num_tc);
		for (i = 0; i < num_tc; i++)
			FUNC3(dev, i, 1, i);
	} else {
		FUNC1(dev);
	}

	return 0;
}