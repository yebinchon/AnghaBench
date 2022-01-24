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
typedef  int /*<<< orphan*/  uint64_t ;
struct netcp_intf {int dummy; } ;
struct net_device {int dummy; } ;
struct gbe_priv {int /*<<< orphan*/  hw_stats_lock; } ;
struct gbe_intf {struct gbe_priv* gbe_dev; } ;
struct ethtool_stats {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct gbe_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct gbe_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct gbe_priv*,int /*<<< orphan*/ *) ; 
 struct gbe_intf* FUNC3 (struct netcp_intf*) ; 
 struct netcp_intf* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct net_device *ndev,
				       struct ethtool_stats *stats,
				       uint64_t *data)
{
	struct netcp_intf *netcp = FUNC4(ndev);
	struct gbe_intf *gbe_intf;
	struct gbe_priv *gbe_dev;

	gbe_intf = FUNC3(netcp);
	if (!gbe_intf)
		return;

	gbe_dev = gbe_intf->gbe_dev;
	FUNC5(&gbe_dev->hw_stats_lock);
	if (FUNC0(gbe_dev))
		FUNC2(gbe_dev, data);
	else
		FUNC1(gbe_dev, data);
	FUNC6(&gbe_dev->hw_stats_lock);
}