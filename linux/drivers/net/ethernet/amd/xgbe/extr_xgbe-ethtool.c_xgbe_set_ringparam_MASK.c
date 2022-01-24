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
struct xgbe_prv_data {unsigned int rx_desc_count; unsigned int tx_desc_count; } ;
struct net_device {int dummy; } ;
struct ethtool_ringparam {unsigned int rx_pending; unsigned int tx_pending; scalar_t__ rx_jumbo_pending; scalar_t__ rx_mini_pending; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int XGBE_RX_DESC_CNT_MAX ; 
 unsigned int XGBE_RX_DESC_CNT_MIN ; 
 unsigned int XGBE_TX_DESC_CNT_MAX ; 
 unsigned int XGBE_TX_DESC_CNT_MIN ; 
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,unsigned int) ; 
 struct xgbe_prv_data* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct xgbe_prv_data*) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev,
			      struct ethtool_ringparam *ringparam)
{
	struct xgbe_prv_data *pdata = FUNC3(netdev);
	unsigned int rx, tx;

	if (ringparam->rx_mini_pending || ringparam->rx_jumbo_pending) {
		FUNC1(netdev, "unsupported ring parameter\n");
		return -EINVAL;
	}

	if ((ringparam->rx_pending < XGBE_RX_DESC_CNT_MIN) ||
	    (ringparam->rx_pending > XGBE_RX_DESC_CNT_MAX)) {
		FUNC1(netdev,
			   "rx ring parameter must be between %u and %u\n",
			   XGBE_RX_DESC_CNT_MIN, XGBE_RX_DESC_CNT_MAX);
		return -EINVAL;
	}

	if ((ringparam->tx_pending < XGBE_TX_DESC_CNT_MIN) ||
	    (ringparam->tx_pending > XGBE_TX_DESC_CNT_MAX)) {
		FUNC1(netdev,
			   "tx ring parameter must be between %u and %u\n",
			   XGBE_TX_DESC_CNT_MIN, XGBE_TX_DESC_CNT_MAX);
		return -EINVAL;
	}

	rx = FUNC0(ringparam->rx_pending);
	if (rx != ringparam->rx_pending)
		FUNC2(netdev,
			      "rx ring parameter rounded to power of two: %u\n",
			      rx);

	tx = FUNC0(ringparam->tx_pending);
	if (tx != ringparam->tx_pending)
		FUNC2(netdev,
			      "tx ring parameter rounded to power of two: %u\n",
			      tx);

	if ((rx == pdata->rx_desc_count) &&
	    (tx == pdata->tx_desc_count))
		goto out;

	pdata->rx_desc_count = rx;
	pdata->tx_desc_count = tx;

	FUNC4(pdata);

out:
	return 0;
}