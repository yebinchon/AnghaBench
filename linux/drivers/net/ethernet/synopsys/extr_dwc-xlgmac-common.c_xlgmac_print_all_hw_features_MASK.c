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
struct TYPE_2__ {int ts_src; int rx_fifo_size; int tx_fifo_size; int pps_out_num; int aux_snap_num; int /*<<< orphan*/  tx_ch_cnt; int /*<<< orphan*/  rx_ch_cnt; int /*<<< orphan*/  tx_q_cnt; int /*<<< orphan*/  rx_q_cnt; int /*<<< orphan*/  l3l4_filter_num; int /*<<< orphan*/  hash_table_size; int /*<<< orphan*/  tc_cnt; scalar_t__ rss; scalar_t__ dma_debug; scalar_t__ tso; scalar_t__ sph; scalar_t__ dcb; int /*<<< orphan*/  dma_width; scalar_t__ adv_ts_hi; scalar_t__ sa_vlan_ins; scalar_t__ addn_mac; scalar_t__ rx_coe; scalar_t__ tx_coe; scalar_t__ eee; scalar_t__ ts; scalar_t__ aoe; scalar_t__ mmc; scalar_t__ mgk; scalar_t__ rwk; scalar_t__ sma; scalar_t__ vlhash; } ;
struct xlgmac_pdata {TYPE_1__ hw_feat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void FUNC1(struct xlgmac_pdata *pdata)
{
	char *str = NULL;

	FUNC0("\n");
	FUNC0("=====================================================\n");
	FUNC0("\n");
	FUNC0("HW support following features\n");
	FUNC0("\n");
	/* HW Feature Register0 */
	FUNC0("VLAN Hash Filter Selected                   : %s\n",
		  pdata->hw_feat.vlhash ? "YES" : "NO");
	FUNC0("SMA (MDIO) Interface                        : %s\n",
		  pdata->hw_feat.sma ? "YES" : "NO");
	FUNC0("PMT Remote Wake-up Packet Enable            : %s\n",
		  pdata->hw_feat.rwk ? "YES" : "NO");
	FUNC0("PMT Magic Packet Enable                     : %s\n",
		  pdata->hw_feat.mgk ? "YES" : "NO");
	FUNC0("RMON/MMC Module Enable                      : %s\n",
		  pdata->hw_feat.mmc ? "YES" : "NO");
	FUNC0("ARP Offload Enabled                         : %s\n",
		  pdata->hw_feat.aoe ? "YES" : "NO");
	FUNC0("IEEE 1588-2008 Timestamp Enabled            : %s\n",
		  pdata->hw_feat.ts ? "YES" : "NO");
	FUNC0("Energy Efficient Ethernet Enabled           : %s\n",
		  pdata->hw_feat.eee ? "YES" : "NO");
	FUNC0("Transmit Checksum Offload Enabled           : %s\n",
		  pdata->hw_feat.tx_coe ? "YES" : "NO");
	FUNC0("Receive Checksum Offload Enabled            : %s\n",
		  pdata->hw_feat.rx_coe ? "YES" : "NO");
	FUNC0("Additional MAC Addresses 1-31 Selected      : %s\n",
		  pdata->hw_feat.addn_mac ? "YES" : "NO");

	switch (pdata->hw_feat.ts_src) {
	case 0:
		str = "RESERVED";
		break;
	case 1:
		str = "INTERNAL";
		break;
	case 2:
		str = "EXTERNAL";
		break;
	case 3:
		str = "BOTH";
		break;
	}
	FUNC0("Timestamp System Time Source                : %s\n", str);

	FUNC0("Source Address or VLAN Insertion Enable     : %s\n",
		  pdata->hw_feat.sa_vlan_ins ? "YES" : "NO");

	/* HW Feature Register1 */
	switch (pdata->hw_feat.rx_fifo_size) {
	case 0:
		str = "128 bytes";
		break;
	case 1:
		str = "256 bytes";
		break;
	case 2:
		str = "512 bytes";
		break;
	case 3:
		str = "1 KBytes";
		break;
	case 4:
		str = "2 KBytes";
		break;
	case 5:
		str = "4 KBytes";
		break;
	case 6:
		str = "8 KBytes";
		break;
	case 7:
		str = "16 KBytes";
		break;
	case 8:
		str = "32 kBytes";
		break;
	case 9:
		str = "64 KBytes";
		break;
	case 10:
		str = "128 KBytes";
		break;
	case 11:
		str = "256 KBytes";
		break;
	default:
		str = "RESERVED";
	}
	FUNC0("MTL Receive FIFO Size                       : %s\n", str);

	switch (pdata->hw_feat.tx_fifo_size) {
	case 0:
		str = "128 bytes";
		break;
	case 1:
		str = "256 bytes";
		break;
	case 2:
		str = "512 bytes";
		break;
	case 3:
		str = "1 KBytes";
		break;
	case 4:
		str = "2 KBytes";
		break;
	case 5:
		str = "4 KBytes";
		break;
	case 6:
		str = "8 KBytes";
		break;
	case 7:
		str = "16 KBytes";
		break;
	case 8:
		str = "32 kBytes";
		break;
	case 9:
		str = "64 KBytes";
		break;
	case 10:
		str = "128 KBytes";
		break;
	case 11:
		str = "256 KBytes";
		break;
	default:
		str = "RESERVED";
	}
	FUNC0("MTL Transmit FIFO Size                      : %s\n", str);

	FUNC0("IEEE 1588 High Word Register Enable         : %s\n",
		  pdata->hw_feat.adv_ts_hi ? "YES" : "NO");
	FUNC0("Address width                               : %u\n",
		  pdata->hw_feat.dma_width);
	FUNC0("DCB Feature Enable                          : %s\n",
		  pdata->hw_feat.dcb ? "YES" : "NO");
	FUNC0("Split Header Feature Enable                 : %s\n",
		  pdata->hw_feat.sph ? "YES" : "NO");
	FUNC0("TCP Segmentation Offload Enable             : %s\n",
		  pdata->hw_feat.tso ? "YES" : "NO");
	FUNC0("DMA Debug Registers Enabled                 : %s\n",
		  pdata->hw_feat.dma_debug ? "YES" : "NO");
	FUNC0("RSS Feature Enabled                         : %s\n",
		  pdata->hw_feat.rss ? "YES" : "NO");
	FUNC0("Number of Traffic classes                   : %u\n",
		  (pdata->hw_feat.tc_cnt));
	FUNC0("Hash Table Size                             : %u\n",
		  pdata->hw_feat.hash_table_size);
	FUNC0("Total number of L3 or L4 Filters            : %u\n",
		  pdata->hw_feat.l3l4_filter_num);

	/* HW Feature Register2 */
	FUNC0("Number of MTL Receive Queues                : %u\n",
		  pdata->hw_feat.rx_q_cnt);
	FUNC0("Number of MTL Transmit Queues               : %u\n",
		  pdata->hw_feat.tx_q_cnt);
	FUNC0("Number of DMA Receive Channels              : %u\n",
		  pdata->hw_feat.rx_ch_cnt);
	FUNC0("Number of DMA Transmit Channels             : %u\n",
		  pdata->hw_feat.tx_ch_cnt);

	switch (pdata->hw_feat.pps_out_num) {
	case 0:
		str = "No PPS output";
		break;
	case 1:
		str = "1 PPS output";
		break;
	case 2:
		str = "2 PPS output";
		break;
	case 3:
		str = "3 PPS output";
		break;
	case 4:
		str = "4 PPS output";
		break;
	default:
		str = "RESERVED";
	}
	FUNC0("Number of PPS Outputs                       : %s\n", str);

	switch (pdata->hw_feat.aux_snap_num) {
	case 0:
		str = "No auxiliary input";
		break;
	case 1:
		str = "1 auxiliary input";
		break;
	case 2:
		str = "2 auxiliary input";
		break;
	case 3:
		str = "3 auxiliary input";
		break;
	case 4:
		str = "4 auxiliary input";
		break;
	default:
		str = "RESERVED";
	}
	FUNC0("Number of Auxiliary Snapshot Inputs         : %s", str);

	FUNC0("\n");
	FUNC0("=====================================================\n");
	FUNC0("\n");
}