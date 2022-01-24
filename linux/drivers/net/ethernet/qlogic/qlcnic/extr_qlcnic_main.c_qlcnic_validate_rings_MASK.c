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
struct qlcnic_adapter {struct net_device* netdev; } ;
struct net_device {int dummy; } ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 int EINVAL ; 
 int QLCNIC_RX_QUEUE ; 
 int QLCNIC_TX_QUEUE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,...) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

int FUNC6(struct qlcnic_adapter *adapter, __u32 ring_cnt,
			  int queue_type)
{
	struct net_device *netdev = adapter->netdev;
	char buf[8];

	if (queue_type == QLCNIC_RX_QUEUE)
		FUNC5(buf, "SDS");
	else
		FUNC5(buf, "Tx");

	if (!FUNC0(ring_cnt)) {
		FUNC1(netdev, "%s rings value should be a power of 2\n",
			   buf);
		return -EINVAL;
	}

	if (FUNC3(adapter) && (queue_type == QLCNIC_TX_QUEUE) &&
	    !FUNC4(adapter)) {
			FUNC1(netdev, "No Multi Tx queue support\n");
			return -EINVAL;
	}

	if (ring_cnt > FUNC2()) {
		FUNC1(netdev,
			   "%s value[%u] should not be higher than, number of online CPUs\n",
			   buf, FUNC2());
		return -EINVAL;
	}

	return 0;
}