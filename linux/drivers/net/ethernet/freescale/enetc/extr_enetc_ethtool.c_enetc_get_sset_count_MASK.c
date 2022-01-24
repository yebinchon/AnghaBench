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
struct enetc_ndev_priv {int num_tx_rings; int num_rx_rings; int /*<<< orphan*/  si; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EOPNOTSUPP ; 
 int ETH_SS_STATS ; 
 int /*<<< orphan*/  enetc_port_counters ; 
 int /*<<< orphan*/  enetc_si_counters ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct enetc_ndev_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  rx_ring_stats ; 
 int /*<<< orphan*/  tx_ring_stats ; 

__attribute__((used)) static int FUNC3(struct net_device *ndev, int sset)
{
	struct enetc_ndev_priv *priv = FUNC2(ndev);

	if (sset == ETH_SS_STATS)
		return FUNC0(enetc_si_counters) +
			FUNC0(tx_ring_stats) * priv->num_tx_rings +
			FUNC0(rx_ring_stats) * priv->num_rx_rings +
			(FUNC1(priv->si) ?
			FUNC0(enetc_port_counters) : 0);

	return -EOPNOTSUPP;
}