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
struct TYPE_2__ {int rx; int idx; int /*<<< orphan*/  vf_id; int /*<<< orphan*/  msg; } ;
union nic_mbx {TYPE_1__ bgx_stats; } ;
struct nicvf {int /*<<< orphan*/  vf_id; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int BGX_RX_STATS_COUNT ; 
 int BGX_TX_STATS_COUNT ; 
 int /*<<< orphan*/  NIC_MBOX_MSG_BGX_STATS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct nicvf*,union nic_mbx*) ; 

void FUNC2(struct nicvf *nic)
{
	int stat = 0;
	union nic_mbx mbx = {};

	if (!FUNC0(nic->netdev))
		return;

	mbx.bgx_stats.msg = NIC_MBOX_MSG_BGX_STATS;
	mbx.bgx_stats.vf_id = nic->vf_id;
	/* Rx stats */
	mbx.bgx_stats.rx = 1;
	while (stat < BGX_RX_STATS_COUNT) {
		mbx.bgx_stats.idx = stat;
		if (FUNC1(nic, &mbx))
			return;
		stat++;
	}

	stat = 0;

	/* Tx stats */
	mbx.bgx_stats.rx = 0;
	while (stat < BGX_TX_STATS_COUNT) {
		mbx.bgx_stats.idx = stat;
		if (FUNC1(nic, &mbx))
			return;
		stat++;
	}
}