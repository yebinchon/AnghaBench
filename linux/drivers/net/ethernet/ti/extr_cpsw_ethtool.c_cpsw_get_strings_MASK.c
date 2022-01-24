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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct net_device {int dummy; } ;
struct cpsw_common {int /*<<< orphan*/  tx_ch_num; int /*<<< orphan*/  rx_ch_num; } ;
struct TYPE_2__ {int /*<<< orphan*/  stat_string; } ;

/* Variables and functions */
 int CPSW_STATS_COMMON_LEN ; 
 int /*<<< orphan*/  ETH_GSTRING_LEN ; 
#define  ETH_SS_STATS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* cpsw_gstrings_stats ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cpsw_common* FUNC2 (struct net_device*) ; 

void FUNC3(struct net_device *ndev, u32 stringset, u8 *data)
{
	struct cpsw_common *cpsw = FUNC2(ndev);
	u8 *p = data;
	int i;

	switch (stringset) {
	case ETH_SS_STATS:
		for (i = 0; i < CPSW_STATS_COMMON_LEN; i++) {
			FUNC1(p, cpsw_gstrings_stats[i].stat_string,
			       ETH_GSTRING_LEN);
			p += ETH_GSTRING_LEN;
		}

		FUNC0(&p, cpsw->rx_ch_num, 1);
		FUNC0(&p, cpsw->tx_ch_num, 0);
		break;
	}
}