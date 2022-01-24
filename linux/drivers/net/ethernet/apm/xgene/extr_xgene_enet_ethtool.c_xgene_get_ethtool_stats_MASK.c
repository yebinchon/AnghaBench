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
struct xgene_enet_pdata {int /*<<< orphan*/ * extd_stats; } ;
struct rtnl_link_stats64 {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct TYPE_2__ {int offset; } ;

/* Variables and functions */
 int XGENE_EXTD_STATS_LEN ; 
 int XGENE_STATS_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct rtnl_link_stats64*) ; 
 TYPE_1__* gstrings_stats ; 
 struct xgene_enet_pdata* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct xgene_enet_pdata*) ; 

__attribute__((used)) static void FUNC3(struct net_device *ndev,
				    struct ethtool_stats *dummy,
				    u64 *data)
{
	struct xgene_enet_pdata *pdata = FUNC1(ndev);
	struct rtnl_link_stats64 stats;
	int i;

	FUNC0(ndev, &stats);
	for (i = 0; i < XGENE_STATS_LEN; i++)
		data[i] = *(u64 *)((char *)&stats + gstrings_stats[i].offset);

	FUNC2(pdata);
	for (i = 0; i < XGENE_EXTD_STATS_LEN; i++)
		data[i + XGENE_STATS_LEN] = pdata->extd_stats[i];
}