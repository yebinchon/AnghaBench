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
struct ftgmac100 {int /*<<< orphan*/  tx_q_entries; int /*<<< orphan*/  rx_q_entries; } ;
struct ethtool_ringparam {int /*<<< orphan*/  tx_pending; int /*<<< orphan*/  rx_pending; int /*<<< orphan*/  tx_max_pending; int /*<<< orphan*/  rx_max_pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_RX_QUEUE_ENTRIES ; 
 int /*<<< orphan*/  MAX_TX_QUEUE_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 (struct ethtool_ringparam*,int /*<<< orphan*/ ,int) ; 
 struct ftgmac100* FUNC1 (struct net_device*) ; 

__attribute__((used)) static void FUNC2(struct net_device *netdev,
				    struct ethtool_ringparam *ering)
{
	struct ftgmac100 *priv = FUNC1(netdev);

	FUNC0(ering, 0, sizeof(*ering));
	ering->rx_max_pending = MAX_RX_QUEUE_ENTRIES;
	ering->tx_max_pending = MAX_TX_QUEUE_ENTRIES;
	ering->rx_pending = priv->rx_q_entries;
	ering->tx_pending = priv->tx_q_entries;
}