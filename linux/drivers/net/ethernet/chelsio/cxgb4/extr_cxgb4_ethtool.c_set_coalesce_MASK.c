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
struct ethtool_coalesce {int /*<<< orphan*/  tx_coalesce_usecs; int /*<<< orphan*/  tx_coalesce_usecs_irq; int /*<<< orphan*/  rx_max_coalesced_frames; int /*<<< orphan*/  rx_coalesce_usecs; int /*<<< orphan*/  use_adaptive_rx_coalesce; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev,
			struct ethtool_coalesce *coalesce)
{
	int ret;

	FUNC0(dev, coalesce->use_adaptive_rx_coalesce);

	ret = FUNC2(dev, coalesce->rx_coalesce_usecs,
				 coalesce->rx_max_coalesced_frames);
	if (ret)
		return ret;

	return FUNC1(dev,
				    coalesce->tx_coalesce_usecs_irq,
				    coalesce->tx_coalesce_usecs);
}