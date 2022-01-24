#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct nicvf {int sqs_count; struct nicvf** snicvf; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int BGX_RX_STATS_COUNT ; 
 int BGX_TX_STATS_COUNT ; 
 int /*<<< orphan*/  ETH_GSTRING_LEN ; 
 scalar_t__ ETH_SS_STATS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nicvf* FUNC1 (struct net_device*) ; 
 TYPE_2__* nicvf_drv_stats ; 
 int /*<<< orphan*/  FUNC2 (struct nicvf*,int /*<<< orphan*/ **,int) ; 
 TYPE_1__* nicvf_hw_stats ; 
 int nicvf_n_drv_stats ; 
 int nicvf_n_hw_stats ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static void FUNC4(struct net_device *netdev, u32 sset, u8 *data)
{
	struct nicvf *nic = FUNC1(netdev);
	int stats;
	int sqs;

	if (sset != ETH_SS_STATS)
		return;

	for (stats = 0; stats < nicvf_n_hw_stats; stats++) {
		FUNC0(data, nicvf_hw_stats[stats].name, ETH_GSTRING_LEN);
		data += ETH_GSTRING_LEN;
	}

	for (stats = 0; stats < nicvf_n_drv_stats; stats++) {
		FUNC0(data, nicvf_drv_stats[stats].name, ETH_GSTRING_LEN);
		data += ETH_GSTRING_LEN;
	}

	FUNC2(nic, &data, 0);

	for (sqs = 0; sqs < nic->sqs_count; sqs++) {
		if (!nic->snicvf[sqs])
			continue;
		FUNC2(nic->snicvf[sqs], &data, sqs + 1);
	}

	for (stats = 0; stats < BGX_RX_STATS_COUNT; stats++) {
		FUNC3(data, "bgx_rxstat%d: ", stats);
		data += ETH_GSTRING_LEN;
	}

	for (stats = 0; stats < BGX_TX_STATS_COUNT; stats++) {
		FUNC3(data, "bgx_txstat%d: ", stats);
		data += ETH_GSTRING_LEN;
	}
}