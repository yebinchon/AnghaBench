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
struct ethtool_ringparam {int /*<<< orphan*/  rx_pending; int /*<<< orphan*/  tx_pending; scalar_t__ rx_jumbo_pending; scalar_t__ rx_mini_pending; } ;
struct emac_adapter {void* rx_desc_cnt; void* tx_desc_cnt; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  EMAC_MAX_RX_DESCS ; 
 int /*<<< orphan*/  EMAC_MAX_TX_DESCS ; 
 int /*<<< orphan*/  EMAC_MIN_RX_DESCS ; 
 int /*<<< orphan*/  EMAC_MIN_TX_DESCS ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct emac_adapter*) ; 
 struct emac_adapter* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev,
			      struct ethtool_ringparam *ring)
{
	struct emac_adapter *adpt = FUNC2(netdev);

	/* We don't have separate queues/rings for small/large frames, so
	 * reject any attempt to specify those values separately.
	 */
	if (ring->rx_mini_pending || ring->rx_jumbo_pending)
		return -EINVAL;

	adpt->tx_desc_cnt =
		FUNC0(ring->tx_pending, EMAC_MIN_TX_DESCS, EMAC_MAX_TX_DESCS);

	adpt->rx_desc_cnt =
		FUNC0(ring->rx_pending, EMAC_MIN_RX_DESCS, EMAC_MAX_RX_DESCS);

	if (FUNC3(netdev))
		return FUNC1(adpt);

	return 0;
}