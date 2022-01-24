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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct e1000_stats {int type; int sizeof_stat; int /*<<< orphan*/  stat_offset; } ;
struct e1000_adapter {int dummy; } ;

/* Variables and functions */
 int E1000_GLOBAL_STATS_LEN ; 
#define  E1000_STATS 129 
#define  NETDEV_STATS 128 
 struct e1000_stats* e1000_gstrings_stats ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,int,int) ; 
 struct e1000_adapter* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *netdev,
				    struct ethtool_stats *stats, u64 *data)
{
	struct e1000_adapter *adapter = FUNC2(netdev);
	int i;
	const struct e1000_stats *stat = e1000_gstrings_stats;

	FUNC0(adapter);
	for (i = 0; i < E1000_GLOBAL_STATS_LEN; i++, stat++) {
		char *p;

		switch (stat->type) {
		case NETDEV_STATS:
			p = (char *)netdev + stat->stat_offset;
			break;
		case E1000_STATS:
			p = (char *)adapter + stat->stat_offset;
			break;
		default:
			FUNC1(netdev, "Invalid E1000 stat type: %u index %d\n",
					 stat->type, i);
			continue;
		}

		if (stat->sizeof_stat == sizeof(u64))
			data[i] = *(u64 *)p;
		else
			data[i] = *(u32 *)p;
	}
/* BUG_ON(i != E1000_STATS_LEN); */
}