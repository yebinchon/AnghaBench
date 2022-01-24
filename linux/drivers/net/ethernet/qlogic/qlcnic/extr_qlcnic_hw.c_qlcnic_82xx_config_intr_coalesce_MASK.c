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
struct qlcnic_nic_intr_coalesce {int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_time_us; int /*<<< orphan*/  flag; } ;
struct qlcnic_adapter {int /*<<< orphan*/  netdev; TYPE_1__* ahw; } ;
struct ethtool_coalesce {int /*<<< orphan*/  rx_max_coalesced_frames; int /*<<< orphan*/  rx_coalesce_usecs; } ;
struct TYPE_2__ {struct qlcnic_nic_intr_coalesce coal; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLCNIC_INTR_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct qlcnic_adapter*) ; 

int FUNC2(struct qlcnic_adapter *adapter,
				     struct ethtool_coalesce *ethcoal)
{
	struct qlcnic_nic_intr_coalesce *coal = &adapter->ahw->coal;
	int rv;

	coal->flag = QLCNIC_INTR_DEFAULT;
	coal->rx_time_us = ethcoal->rx_coalesce_usecs;
	coal->rx_packets = ethcoal->rx_max_coalesced_frames;

	rv = FUNC1(adapter);

	if (rv)
		FUNC0(adapter->netdev,
			   "Failed to set Rx coalescing parameters\n");

	return rv;
}