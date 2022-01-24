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
typedef  int u64 ;
typedef  int u32 ;
struct net_device {int /*<<< orphan*/  stats; } ;
struct ethtool_stats {int dummy; } ;
struct bcm_enet_stats {int mib_reg; int stat_offset; int sizeof_stat; } ;
struct bcm_enet_priv {int dummy; } ;

/* Variables and functions */
 int BCM_ENETSW_STATS_LEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct bcm_enet_stats* bcm_enetsw_gstrings_stats ; 
 int FUNC1 (struct bcm_enet_priv*,int /*<<< orphan*/ ) ; 
 struct bcm_enet_priv* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *netdev,
					 struct ethtool_stats *stats,
					 u64 *data)
{
	struct bcm_enet_priv *priv;
	int i;

	priv = FUNC2(netdev);

	for (i = 0; i < BCM_ENETSW_STATS_LEN; i++) {
		const struct bcm_enet_stats *s;
		u32 lo, hi;
		char *p;
		int reg;

		s = &bcm_enetsw_gstrings_stats[i];

		reg = s->mib_reg;
		if (reg == -1)
			continue;

		lo = FUNC1(priv, FUNC0(reg));
		p = (char *)priv + s->stat_offset;

		if (s->sizeof_stat == sizeof(u64)) {
			hi = FUNC1(priv, FUNC0(reg + 1));
			*(u64 *)p = ((u64)hi << 32 | lo);
		} else {
			*(u32 *)p = lo;
		}
	}

	for (i = 0; i < BCM_ENETSW_STATS_LEN; i++) {
		const struct bcm_enet_stats *s;
		char *p;

		s = &bcm_enetsw_gstrings_stats[i];

		if (s->mib_reg == -1)
			p = (char *)&netdev->stats + s->stat_offset;
		else
			p = (char *)priv + s->stat_offset;

		data[i] = (s->sizeof_stat == sizeof(u64)) ?
			*(u64 *)p : *(u32 *)p;
	}
}