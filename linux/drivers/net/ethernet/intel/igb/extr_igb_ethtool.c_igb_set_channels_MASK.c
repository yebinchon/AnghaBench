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
struct igb_adapter {unsigned int rss_queues; } ;
struct ethtool_channels {unsigned int combined_count; scalar_t__ other_count; scalar_t__ tx_count; scalar_t__ rx_count; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ NON_Q_VECTORS ; 
 unsigned int FUNC0 (struct igb_adapter*) ; 
 int FUNC1 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct igb_adapter*,unsigned int) ; 
 struct igb_adapter* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev,
			    struct ethtool_channels *ch)
{
	struct igb_adapter *adapter = FUNC3(netdev);
	unsigned int count = ch->combined_count;
	unsigned int max_combined = 0;

	/* Verify they are not requesting separate vectors */
	if (!count || ch->rx_count || ch->tx_count)
		return -EINVAL;

	/* Verify other_count is valid and has not been changed */
	if (ch->other_count != NON_Q_VECTORS)
		return -EINVAL;

	/* Verify the number of channels doesn't exceed hw limits */
	max_combined = FUNC0(adapter);
	if (count > max_combined)
		return -EINVAL;

	if (count != adapter->rss_queues) {
		adapter->rss_queues = count;
		FUNC2(adapter, max_combined);

		/* Hardware has to reinitialize queues and interrupts to
		 * match the new configuration.
		 */
		return FUNC1(adapter);
	}

	return 0;
}