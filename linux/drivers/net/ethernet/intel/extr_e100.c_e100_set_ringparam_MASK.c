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
struct param_range {void* count; int /*<<< orphan*/  max; int /*<<< orphan*/  min; } ;
struct TYPE_2__ {struct param_range cbs; struct param_range rfds; } ;
struct nic {int /*<<< orphan*/  netdev; TYPE_1__ params; } ;
struct net_device {int dummy; } ;
struct ethtool_ringparam {int /*<<< orphan*/  tx_pending; int /*<<< orphan*/  rx_pending; scalar_t__ rx_jumbo_pending; scalar_t__ rx_mini_pending; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC0 (struct nic*) ; 
 int /*<<< orphan*/  FUNC1 (struct nic*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (void*,int /*<<< orphan*/ ) ; 
 struct nic* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,void*,void*) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *netdev,
	struct ethtool_ringparam *ring)
{
	struct nic *nic = FUNC4(netdev);
	struct param_range *rfds = &nic->params.rfds;
	struct param_range *cbs = &nic->params.cbs;

	if ((ring->rx_mini_pending) || (ring->rx_jumbo_pending))
		return -EINVAL;

	if (FUNC6(netdev))
		FUNC0(nic);
	rfds->count = FUNC2(ring->rx_pending, rfds->min);
	rfds->count = FUNC3(rfds->count, rfds->max);
	cbs->count = FUNC2(ring->tx_pending, cbs->min);
	cbs->count = FUNC3(cbs->count, cbs->max);
	FUNC5(nic, drv, nic->netdev, "Ring Param settings: rx: %d, tx %d\n",
		   rfds->count, cbs->count);
	if (FUNC6(netdev))
		FUNC1(nic);

	return 0;
}