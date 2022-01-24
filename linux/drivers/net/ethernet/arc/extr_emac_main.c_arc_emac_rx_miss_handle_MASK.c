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
struct net_device_stats {unsigned int rx_errors; unsigned int rx_missed_errors; } ;
struct net_device {struct net_device_stats stats; } ;
struct arc_emac_priv {unsigned int rx_missed_errors; } ;

/* Variables and functions */
 int /*<<< orphan*/  R_MISS ; 
 unsigned int FUNC0 (struct arc_emac_priv*,int /*<<< orphan*/ ) ; 
 struct arc_emac_priv* FUNC1 (struct net_device*) ; 

__attribute__((used)) static void FUNC2(struct net_device *ndev)
{
	struct arc_emac_priv *priv = FUNC1(ndev);
	struct net_device_stats *stats = &ndev->stats;
	unsigned int miss;

	miss = FUNC0(priv, R_MISS);
	if (miss) {
		stats->rx_errors += miss;
		stats->rx_missed_errors += miss;
		priv->rx_missed_errors += miss;
	}
}