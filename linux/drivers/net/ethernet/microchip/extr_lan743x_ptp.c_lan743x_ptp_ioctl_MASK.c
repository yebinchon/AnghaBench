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
struct lan743x_adapter {int /*<<< orphan*/  netdev; int /*<<< orphan*/ * tx; } ;
struct ifreq {int /*<<< orphan*/  ifr_data; } ;
struct hwtstamp_config {int flags; int tx_type; } ;
typedef  int /*<<< orphan*/  config ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
#define  HWTSTAMP_TX_OFF 130 
#define  HWTSTAMP_TX_ON 129 
#define  HWTSTAMP_TX_ONESTEP_SYNC 128 
 int LAN743X_MAX_TX_CHANNELS ; 
 scalar_t__ FUNC0 (struct hwtstamp_config*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct hwtstamp_config*,int) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC2 (struct lan743x_adapter*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 struct lan743x_adapter* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct lan743x_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct lan743x_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

int FUNC7(struct net_device *netdev, struct ifreq *ifr, int cmd)
{
	struct lan743x_adapter *adapter = FUNC4(netdev);
	struct hwtstamp_config config;
	int ret = 0;
	int index;

	if (!ifr) {
		FUNC5(adapter, drv, adapter->netdev,
			  "SIOCSHWTSTAMP, ifr == NULL\n");
		return -EINVAL;
	}

	if (FUNC0(&config, ifr->ifr_data, sizeof(config)))
		return -EFAULT;

	if (config.flags) {
		FUNC6(adapter, drv, adapter->netdev,
			   "ignoring hwtstamp_config.flags == 0x%08X, expected 0\n",
			   config.flags);
	}

	switch (config.tx_type) {
	case HWTSTAMP_TX_OFF:
		for (index = 0; index < LAN743X_MAX_TX_CHANNELS;
			index++)
			FUNC3(&adapter->tx[index],
							 false, false);
		FUNC2(adapter, false);
		break;
	case HWTSTAMP_TX_ON:
		for (index = 0; index < LAN743X_MAX_TX_CHANNELS;
			index++)
			FUNC3(&adapter->tx[index],
							 true, false);
		FUNC2(adapter, false);
		break;
	case HWTSTAMP_TX_ONESTEP_SYNC:
		for (index = 0; index < LAN743X_MAX_TX_CHANNELS;
			index++)
			FUNC3(&adapter->tx[index],
							 true, true);

		FUNC2(adapter, true);
		break;
	default:
		FUNC6(adapter, drv, adapter->netdev,
			   "  tx_type = %d, UNKNOWN\n", config.tx_type);
		ret = -EINVAL;
		break;
	}

	if (!ret)
		return FUNC1(ifr->ifr_data, &config,
			sizeof(config)) ? -EFAULT : 0;
	return ret;
}