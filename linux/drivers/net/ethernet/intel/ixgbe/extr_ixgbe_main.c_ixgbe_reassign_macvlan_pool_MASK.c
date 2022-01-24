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
struct ixgbe_fwd_adapter {int pool; } ;
struct ixgbe_adapter {int num_rx_pools; int /*<<< orphan*/  netdev; int /*<<< orphan*/  fwd_bitmask; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_fwd_adapter*) ; 
 struct ixgbe_fwd_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct net_device *vdev, void *data)
{
	struct ixgbe_adapter *adapter = data;
	struct ixgbe_fwd_adapter *accel;
	int pool;

	/* we only care about macvlans... */
	if (!FUNC7(vdev))
		return 0;

	/* that have hardware offload enabled... */
	accel = FUNC2(vdev);
	if (!accel)
		return 0;

	/* If we can relocate to a different bit do so */
	pool = FUNC0(adapter->fwd_bitmask, adapter->num_rx_pools);
	if (pool < adapter->num_rx_pools) {
		FUNC8(pool, adapter->fwd_bitmask);
		accel->pool = pool;
		return 0;
	}

	/* if we cannot find a free pool then disable the offload */
	FUNC4(vdev, "L2FW offload disabled due to lack of queue resources\n");
	FUNC3(vdev);

	/* unbind the queues and drop the subordinate channel config */
	FUNC6(adapter->netdev, vdev);
	FUNC5(vdev, 0);

	FUNC1(accel);

	return 0;
}