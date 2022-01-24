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
struct rtnl_link_stats64 {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_bytes; } ;
struct net_device {int /*<<< orphan*/  stats; } ;
struct bcm_sysport_stats64 {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct bcm_sysport_priv {int /*<<< orphan*/  syncp; struct bcm_sysport_stats64 stats64; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bcm_sysport_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct bcm_sysport_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtnl_link_stats64*,int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev,
				    struct rtnl_link_stats64 *stats)
{
	struct bcm_sysport_priv *priv = FUNC1(dev);
	struct bcm_sysport_stats64 *stats64 = &priv->stats64;
	unsigned int start;

	FUNC2(stats, &dev->stats);

	FUNC0(priv, &stats->tx_bytes,
				    &stats->tx_packets);

	do {
		start = FUNC3(&priv->syncp);
		stats->rx_packets = stats64->rx_packets;
		stats->rx_bytes = stats64->rx_bytes;
	} while (FUNC4(&priv->syncp, start));
}