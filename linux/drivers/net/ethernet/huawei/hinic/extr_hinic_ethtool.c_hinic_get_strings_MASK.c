#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  size_t u16 ;
struct net_device {int dummy; } ;
struct hinic_dev {size_t num_qps; } ;
struct TYPE_6__ {char* name; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  ETH_GSTRING_LEN ; 
#define  ETH_SS_STATS 128 
 TYPE_1__* hinic_function_stats ; 
 TYPE_1__* hinic_port_stats ; 
 TYPE_1__* hinic_rx_queue_stats ; 
 TYPE_1__* hinic_tx_queue_stats ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 struct hinic_dev* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 

__attribute__((used)) static void FUNC4(struct net_device *netdev,
			      u32 stringset, u8 *data)
{
	struct hinic_dev *nic_dev = FUNC2(netdev);
	char *p = (char *)data;
	u16 i, j;

	switch (stringset) {
	case ETH_SS_STATS:
		for (i = 0; i < FUNC0(hinic_function_stats); i++) {
			FUNC1(p, hinic_function_stats[i].name,
			       ETH_GSTRING_LEN);
			p += ETH_GSTRING_LEN;
		}

		for (i = 0; i < FUNC0(hinic_port_stats); i++) {
			FUNC1(p, hinic_port_stats[i].name,
			       ETH_GSTRING_LEN);
			p += ETH_GSTRING_LEN;
		}

		for (i = 0; i < nic_dev->num_qps; i++) {
			for (j = 0; j < FUNC0(hinic_tx_queue_stats); j++) {
				FUNC3(p, hinic_tx_queue_stats[j].name, i);
				p += ETH_GSTRING_LEN;
			}
		}

		for (i = 0; i < nic_dev->num_qps; i++) {
			for (j = 0; j < FUNC0(hinic_rx_queue_stats); j++) {
				FUNC3(p, hinic_rx_queue_stats[j].name, i);
				p += ETH_GSTRING_LEN;
			}
		}

		return;
	default:
		return;
	}
}