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
typedef  char u8 ;
typedef  int u32 ;
struct net_device {int dummy; } ;
struct ixgbevf_adapter {int num_tx_queues; int num_xdp_queues; int num_rx_queues; } ;
struct TYPE_2__ {int /*<<< orphan*/  stat_string; } ;

/* Variables and functions */
 int ETH_GSTRING_LEN ; 
#define  ETH_SS_PRIV_FLAGS 130 
#define  ETH_SS_STATS 129 
#define  ETH_SS_TEST 128 
 int IXGBEVF_GLOBAL_STATS_LEN ; 
 int IXGBEVF_PRIV_FLAGS_STR_LEN ; 
 int IXGBEVF_TEST_LEN ; 
 int /*<<< orphan*/ * ixgbe_gstrings_test ; 
 TYPE_1__* ixgbevf_gstrings_stats ; 
 int /*<<< orphan*/  ixgbevf_priv_flags_strings ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 struct ixgbevf_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static void FUNC3(struct net_device *netdev, u32 stringset,
				u8 *data)
{
	struct ixgbevf_adapter *adapter = FUNC1(netdev);
	char *p = (char *)data;
	int i;

	switch (stringset) {
	case ETH_SS_TEST:
		FUNC0(data, *ixgbe_gstrings_test,
		       IXGBEVF_TEST_LEN * ETH_GSTRING_LEN);
		break;
	case ETH_SS_STATS:
		for (i = 0; i < IXGBEVF_GLOBAL_STATS_LEN; i++) {
			FUNC0(p, ixgbevf_gstrings_stats[i].stat_string,
			       ETH_GSTRING_LEN);
			p += ETH_GSTRING_LEN;
		}

		for (i = 0; i < adapter->num_tx_queues; i++) {
			FUNC2(p, "tx_queue_%u_packets", i);
			p += ETH_GSTRING_LEN;
			FUNC2(p, "tx_queue_%u_bytes", i);
			p += ETH_GSTRING_LEN;
		}
		for (i = 0; i < adapter->num_xdp_queues; i++) {
			FUNC2(p, "xdp_queue_%u_packets", i);
			p += ETH_GSTRING_LEN;
			FUNC2(p, "xdp_queue_%u_bytes", i);
			p += ETH_GSTRING_LEN;
		}
		for (i = 0; i < adapter->num_rx_queues; i++) {
			FUNC2(p, "rx_queue_%u_packets", i);
			p += ETH_GSTRING_LEN;
			FUNC2(p, "rx_queue_%u_bytes", i);
			p += ETH_GSTRING_LEN;
		}
		break;
	case ETH_SS_PRIV_FLAGS:
		FUNC0(data, ixgbevf_priv_flags_strings,
		       IXGBEVF_PRIV_FLAGS_STR_LEN * ETH_GSTRING_LEN);
		break;
	}
}