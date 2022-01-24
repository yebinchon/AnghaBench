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
typedef  int /*<<< orphan*/  u64 ;
struct sc92031_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  rx_loss; int /*<<< orphan*/  tx_timeouts; } ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;

/* Variables and functions */
 struct sc92031_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev,
		struct ethtool_stats *stats, u64 *data)
{
	struct sc92031_priv *priv = FUNC0(dev);

	FUNC1(&priv->lock);
	data[0] = priv->tx_timeouts;
	data[1] = priv->rx_loss;
	FUNC2(&priv->lock);
}