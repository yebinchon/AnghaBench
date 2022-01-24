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
struct adapter {struct net_device** port; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct net_device*) ; 

void FUNC8(struct adapter *adapter, int port_id, int link_stat)
{
	struct net_device *dev = adapter->port[port_id];

	/* Skip changes from disabled ports. */
	if (FUNC7(dev) && link_stat != FUNC5(dev)) {
		if (link_stat)
			FUNC6(dev);
		else {
#ifdef CONFIG_CHELSIO_T4_DCB
			if (cxgb4_dcb_enabled(dev)) {
				cxgb4_dcb_reset(dev);
				dcb_tx_queue_prio_enable(dev, false);
			}
#endif /* CONFIG_CHELSIO_T4_DCB */
			FUNC4(dev);
		}

		FUNC3(dev);
	}
}