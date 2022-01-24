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
struct qlcnic_adapter {int flags; int /*<<< orphan*/  drv_tx_rings; int /*<<< orphan*/  drv_sds_rings; int /*<<< orphan*/  drv_tss_rings; int /*<<< orphan*/  drv_rss_rings; } ;
struct net_device {int dummy; } ;
struct ethtool_channels {int /*<<< orphan*/  tx_count; int /*<<< orphan*/  rx_count; scalar_t__ combined_count; scalar_t__ other_count; } ;

/* Variables and functions */
 int EINVAL ; 
 int QLCNIC_MSIX_ENABLED ; 
 int /*<<< orphan*/  QLCNIC_RX_QUEUE ; 
 int QLCNIC_TSS_RSS ; 
 int /*<<< orphan*/  QLCNIC_TX_QUEUE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct qlcnic_adapter* FUNC2 (struct net_device*) ; 
 int FUNC3 (struct qlcnic_adapter*) ; 
 int FUNC4 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev,
			       struct ethtool_channels *channel)
{
	struct qlcnic_adapter *adapter = FUNC2(dev);
	int err;

	if (!(adapter->flags & QLCNIC_MSIX_ENABLED)) {
		FUNC0(dev, "No RSS/TSS support in non MSI-X mode\n");
		return -EINVAL;
	}

	if (channel->other_count || channel->combined_count)
		return -EINVAL;

	err = FUNC4(adapter, channel->rx_count,
					 channel->tx_count);
	if (err)
		return err;

	if (adapter->drv_sds_rings != channel->rx_count) {
		err = FUNC5(adapter, channel->rx_count,
					    QLCNIC_RX_QUEUE);
		if (err) {
			FUNC0(dev, "Unable to configure %u SDS rings\n",
				   channel->rx_count);
			return err;
		}
		adapter->drv_rss_rings = channel->rx_count;
	}

	if (adapter->drv_tx_rings != channel->tx_count) {
		err = FUNC5(adapter, channel->tx_count,
					    QLCNIC_TX_QUEUE);
		if (err) {
			FUNC0(dev, "Unable to configure %u Tx rings\n",
				   channel->tx_count);
			return err;
		}
		adapter->drv_tss_rings = channel->tx_count;
	}

	adapter->flags |= QLCNIC_TSS_RSS;

	err = FUNC3(adapter);
	FUNC1(dev, "Allocated %d SDS rings and %d Tx rings\n",
		    adapter->drv_sds_rings, adapter->drv_tx_rings);

	return err;
}