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
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct bdx_priv {int /*<<< orphan*/  hw_stats; scalar_t__ stats_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bdx_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct bdx_priv* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *netdev,
				  struct ethtool_stats *stats, u64 *data)
{
	struct bdx_priv *priv = FUNC2(netdev);

	if (priv->stats_flag) {

		/* Update stats from HW */
		FUNC0(priv);

		/* Copy data to user buffer */
		FUNC1(data, &priv->hw_stats, sizeof(priv->hw_stats));
	}
}