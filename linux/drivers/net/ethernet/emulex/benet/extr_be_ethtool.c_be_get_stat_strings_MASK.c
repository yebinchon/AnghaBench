#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct net_device {int dummy; } ;
struct be_adapter {int num_rx_qs; int num_tx_qs; } ;
struct TYPE_6__ {char* desc; } ;
struct TYPE_5__ {int /*<<< orphan*/  desc; } ;
struct TYPE_4__ {char* desc; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int ETHTOOL_RXSTATS_NUM ; 
 int ETHTOOL_STATS_NUM ; 
 int ETHTOOL_TESTS_NUM ; 
 int ETHTOOL_TXSTATS_NUM ; 
 int ETH_GSTRING_LEN ; 
#define  ETH_SS_PRIV_FLAGS 130 
#define  ETH_SS_STATS 129 
#define  ETH_SS_TEST 128 
 int /*<<< orphan*/ * be_priv_flags ; 
 TYPE_3__* et_rx_stats ; 
 int /*<<< orphan*/ * et_self_tests ; 
 TYPE_2__* et_stats ; 
 TYPE_1__* et_tx_stats ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct be_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct net_device *netdev, uint32_t stringset,
				uint8_t *data)
{
	struct be_adapter *adapter = FUNC2(netdev);
	int i, j;

	switch (stringset) {
	case ETH_SS_STATS:
		for (i = 0; i < ETHTOOL_STATS_NUM; i++) {
			FUNC1(data, et_stats[i].desc, ETH_GSTRING_LEN);
			data += ETH_GSTRING_LEN;
		}
		for (i = 0; i < adapter->num_rx_qs; i++) {
			for (j = 0; j < ETHTOOL_RXSTATS_NUM; j++) {
				FUNC3(data, "rxq%d: %s", i,
					et_rx_stats[j].desc);
				data += ETH_GSTRING_LEN;
			}
		}
		for (i = 0; i < adapter->num_tx_qs; i++) {
			for (j = 0; j < ETHTOOL_TXSTATS_NUM; j++) {
				FUNC3(data, "txq%d: %s", i,
					et_tx_stats[j].desc);
				data += ETH_GSTRING_LEN;
			}
		}
		break;
	case ETH_SS_TEST:
		for (i = 0; i < ETHTOOL_TESTS_NUM; i++) {
			FUNC1(data, et_self_tests[i], ETH_GSTRING_LEN);
			data += ETH_GSTRING_LEN;
		}
		break;
	case ETH_SS_PRIV_FLAGS:
		for (i = 0; i < FUNC0(be_priv_flags); i++)
			FUNC4(data + i * ETH_GSTRING_LEN, be_priv_flags[i]);
		break;
	}
}