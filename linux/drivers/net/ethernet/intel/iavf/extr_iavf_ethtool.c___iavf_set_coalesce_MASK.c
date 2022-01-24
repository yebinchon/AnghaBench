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
struct iavf_vsi {scalar_t__ work_limit; } ;
struct iavf_adapter {int num_active_queues; struct iavf_vsi vsi; } ;
struct ethtool_coalesce {scalar_t__ rx_coalesce_usecs; scalar_t__ tx_coalesce_usecs; scalar_t__ use_adaptive_tx_coalesce; scalar_t__ use_adaptive_rx_coalesce; scalar_t__ tx_max_coalesced_frames_irq; scalar_t__ rx_max_coalesced_frames_irq; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ IAVF_MAX_ITR ; 
 scalar_t__ IAVF_MIN_ITR ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC0 (struct iavf_adapter*,struct ethtool_coalesce*,int) ; 
 struct iavf_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct iavf_adapter*,int /*<<< orphan*/ ,struct net_device*,char*,...) ; 

__attribute__((used)) static int FUNC3(struct net_device *netdev,
			       struct ethtool_coalesce *ec, int queue)
{
	struct iavf_adapter *adapter = FUNC1(netdev);
	struct iavf_vsi *vsi = &adapter->vsi;
	int i;

	if (ec->tx_max_coalesced_frames_irq || ec->rx_max_coalesced_frames_irq)
		vsi->work_limit = ec->tx_max_coalesced_frames_irq;

	if (ec->rx_coalesce_usecs == 0) {
		if (ec->use_adaptive_rx_coalesce)
			FUNC2(adapter, drv, netdev, "rx-usecs=0, need to disable adaptive-rx for a complete disable\n");
	} else if ((ec->rx_coalesce_usecs < IAVF_MIN_ITR) ||
		   (ec->rx_coalesce_usecs > IAVF_MAX_ITR)) {
		FUNC2(adapter, drv, netdev, "Invalid value, rx-usecs range is 0-8160\n");
		return -EINVAL;
	} else if (ec->tx_coalesce_usecs == 0) {
		if (ec->use_adaptive_tx_coalesce)
			FUNC2(adapter, drv, netdev, "tx-usecs=0, need to disable adaptive-tx for a complete disable\n");
	} else if ((ec->tx_coalesce_usecs < IAVF_MIN_ITR) ||
		   (ec->tx_coalesce_usecs > IAVF_MAX_ITR)) {
		FUNC2(adapter, drv, netdev, "Invalid value, tx-usecs range is 0-8160\n");
		return -EINVAL;
	}

	/* Rx and Tx usecs has per queue value. If user doesn't specify the
	 * queue, apply to all queues.
	 */
	if (queue < 0) {
		for (i = 0; i < adapter->num_active_queues; i++)
			FUNC0(adapter, ec, i);
	} else if (queue < adapter->num_active_queues) {
		FUNC0(adapter, ec, queue);
	} else {
		FUNC2(adapter, drv, netdev, "Invalid queue value, queue range is 0 - %d\n",
			   adapter->num_active_queues - 1);
		return -EINVAL;
	}

	return 0;
}