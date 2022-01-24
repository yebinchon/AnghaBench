#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct net_device {int dummy; } ;
struct ibmvnic_adapter {int req_tx_queues; int req_rx_queues; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int ETH_GSTRING_LEN ; 
#define  ETH_SS_PRIV_FLAGS 129 
#define  ETH_SS_STATS 128 
 TYPE_1__* ibmvnic_priv_flags ; 
 TYPE_1__* ibmvnic_stats ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct ibmvnic_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev, u32 stringset, u8 *data)
{
	struct ibmvnic_adapter *adapter = FUNC2(dev);
	int i;

	switch (stringset) {
	case ETH_SS_STATS:
		for (i = 0; i < FUNC0(ibmvnic_stats);
				i++, data += ETH_GSTRING_LEN)
			FUNC1(data, ibmvnic_stats[i].name, ETH_GSTRING_LEN);

		for (i = 0; i < adapter->req_tx_queues; i++) {
			FUNC3(data, ETH_GSTRING_LEN, "tx%d_packets", i);
			data += ETH_GSTRING_LEN;

			FUNC3(data, ETH_GSTRING_LEN, "tx%d_bytes", i);
			data += ETH_GSTRING_LEN;

			FUNC3(data, ETH_GSTRING_LEN,
				 "tx%d_dropped_packets", i);
			data += ETH_GSTRING_LEN;
		}

		for (i = 0; i < adapter->req_rx_queues; i++) {
			FUNC3(data, ETH_GSTRING_LEN, "rx%d_packets", i);
			data += ETH_GSTRING_LEN;

			FUNC3(data, ETH_GSTRING_LEN, "rx%d_bytes", i);
			data += ETH_GSTRING_LEN;

			FUNC3(data, ETH_GSTRING_LEN, "rx%d_interrupts", i);
			data += ETH_GSTRING_LEN;
		}
		break;

	case ETH_SS_PRIV_FLAGS:
		for (i = 0; i < FUNC0(ibmvnic_priv_flags); i++)
			FUNC4(data + i * ETH_GSTRING_LEN,
			       ibmvnic_priv_flags[i]);
		break;
	default:
		return;
	}
}