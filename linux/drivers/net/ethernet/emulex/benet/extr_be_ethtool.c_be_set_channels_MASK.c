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
struct ethtool_channels {scalar_t__ combined_count; scalar_t__ rx_count; scalar_t__ tx_count; scalar_t__ other_count; } ;
struct be_adapter {scalar_t__ cfg_num_rx_irqs; scalar_t__ cfg_num_tx_irqs; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct be_adapter*) ; 
 scalar_t__ FUNC2 (struct be_adapter*) ; 
 scalar_t__ FUNC3 (struct be_adapter*) ; 
 int FUNC4 (struct be_adapter*) ; 
 struct be_adapter* FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device  *netdev,
			   struct ethtool_channels *ch)
{
	struct be_adapter *adapter = FUNC5(netdev);
	int status;

	/* we support either only combined channels or a combination of
	 * combined and either RX-only or TX-only channels.
	 */
	if (ch->other_count || !ch->combined_count ||
	    (ch->rx_count && ch->tx_count))
		return -EINVAL;

	if (ch->combined_count > FUNC1(adapter) ||
	    (ch->rx_count &&
	     (ch->rx_count + ch->combined_count) > FUNC2(adapter)) ||
	    (ch->tx_count &&
	     (ch->tx_count + ch->combined_count) > FUNC3(adapter)))
		return -EINVAL;

	adapter->cfg_num_rx_irqs = ch->combined_count + ch->rx_count;
	adapter->cfg_num_tx_irqs = ch->combined_count + ch->tx_count;

	status = FUNC4(adapter);
	return FUNC0(status);
}