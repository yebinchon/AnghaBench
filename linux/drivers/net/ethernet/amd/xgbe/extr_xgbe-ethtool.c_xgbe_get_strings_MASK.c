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
struct xgbe_prv_data {int tx_ring_count; int rx_ring_count; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  stat_string; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_GSTRING_LEN ; 
#define  ETH_SS_STATS 128 
 int XGBE_STATS_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct xgbe_prv_data* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 TYPE_1__* xgbe_gstring_stats ; 

__attribute__((used)) static void FUNC3(struct net_device *netdev, u32 stringset, u8 *data)
{
	struct xgbe_prv_data *pdata = FUNC1(netdev);
	int i;

	switch (stringset) {
	case ETH_SS_STATS:
		for (i = 0; i < XGBE_STATS_COUNT; i++) {
			FUNC0(data, xgbe_gstring_stats[i].stat_string,
			       ETH_GSTRING_LEN);
			data += ETH_GSTRING_LEN;
		}
		for (i = 0; i < pdata->tx_ring_count; i++) {
			FUNC2(data, "txq_%u_packets", i);
			data += ETH_GSTRING_LEN;
			FUNC2(data, "txq_%u_bytes", i);
			data += ETH_GSTRING_LEN;
		}
		for (i = 0; i < pdata->rx_ring_count; i++) {
			FUNC2(data, "rxq_%u_packets", i);
			data += ETH_GSTRING_LEN;
			FUNC2(data, "rxq_%u_bytes", i);
			data += ETH_GSTRING_LEN;
		}
		break;
	}
}