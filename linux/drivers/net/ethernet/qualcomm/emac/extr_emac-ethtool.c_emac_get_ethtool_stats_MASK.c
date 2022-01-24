#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct emac_adapter {TYPE_1__ stats; } ;

/* Variables and functions */
 int EMAC_STATS_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct emac_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 struct emac_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct net_device *netdev,
				   struct ethtool_stats *stats,
				   u64 *data)
{
	struct emac_adapter *adpt = FUNC2(netdev);

	FUNC3(&adpt->stats.lock);

	FUNC0(adpt);
	FUNC1(data, &adpt->stats, EMAC_STATS_LEN * sizeof(u64));

	FUNC4(&adpt->stats.lock);
}