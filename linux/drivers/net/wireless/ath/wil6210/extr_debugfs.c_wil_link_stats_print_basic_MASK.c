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
struct wmi_link_stats_basic {int per_average; int /*<<< orphan*/  other_tx_sector; int /*<<< orphan*/  other_rx_sector; int /*<<< orphan*/  my_tx_sector; int /*<<< orphan*/  my_rx_sector; int /*<<< orphan*/  rx_effective_ant_num; int /*<<< orphan*/  selected_rfc; int /*<<< orphan*/  snr; int /*<<< orphan*/  sqi; int /*<<< orphan*/  rssi; int /*<<< orphan*/  rx_bcast_frames; int /*<<< orphan*/  tx_goodput; int /*<<< orphan*/  rx_goodput; int /*<<< orphan*/  tx_tpt; int /*<<< orphan*/  bf_mcs; int /*<<< orphan*/  cid; } ;
struct wil6210_vif {int dummy; } ;
struct seq_file {int dummy; } ;
typedef  int /*<<< orphan*/  per ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 

__attribute__((used)) static void FUNC3(struct wil6210_vif *vif,
				       struct seq_file *s,
				       struct wmi_link_stats_basic *basic)
{
	char per[5] = "?";

	if (basic->per_average != 0xff)
		FUNC2(per, sizeof(per), "%d%%", basic->per_average);

	FUNC1(s, "CID %d {\n"
		   "\tTxMCS %d TxTpt %d\n"
		   "\tGoodput(rx:tx) %d:%d\n"
		   "\tRxBcastFrames %d\n"
		   "\tRSSI %d SQI %d SNR %d PER %s\n"
		   "\tRx RFC %d Ant num %d\n"
		   "\tSectors(rx:tx) my %d:%d peer %d:%d\n"
		   "}\n",
		   basic->cid,
		   basic->bf_mcs, FUNC0(basic->tx_tpt),
		   FUNC0(basic->rx_goodput),
		   FUNC0(basic->tx_goodput),
		   FUNC0(basic->rx_bcast_frames),
		   basic->rssi, basic->sqi, basic->snr, per,
		   basic->selected_rfc, basic->rx_effective_ant_num,
		   basic->my_rx_sector, basic->my_tx_sector,
		   basic->other_rx_sector, basic->other_tx_sector);
}