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
struct ucc_geth_private {TYPE_1__* ug_info; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int statisticsMode; } ;

/* Variables and functions */
 int ETH_GSTRING_LEN ; 
 int UCC_GETH_STATISTICS_GATHERING_MODE_FIRMWARE_RX ; 
 int UCC_GETH_STATISTICS_GATHERING_MODE_FIRMWARE_TX ; 
 int UCC_GETH_STATISTICS_GATHERING_MODE_HARDWARE ; 
 int UEC_HW_STATS_LEN ; 
 int UEC_RX_FW_STATS_LEN ; 
 int UEC_TX_FW_STATS_LEN ; 
 int /*<<< orphan*/  hw_stat_gstrings ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct ucc_geth_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  rx_fw_stat_gstrings ; 
 int /*<<< orphan*/  tx_fw_stat_gstrings ; 

__attribute__((used)) static void FUNC2(struct net_device *netdev, u32 stringset, u8 *buf)
{
	struct ucc_geth_private *ugeth = FUNC1(netdev);
	u32 stats_mode = ugeth->ug_info->statisticsMode;

	if (stats_mode & UCC_GETH_STATISTICS_GATHERING_MODE_HARDWARE) {
		FUNC0(buf, hw_stat_gstrings, UEC_HW_STATS_LEN *
			       	ETH_GSTRING_LEN);
		buf += UEC_HW_STATS_LEN * ETH_GSTRING_LEN;
	}
	if (stats_mode & UCC_GETH_STATISTICS_GATHERING_MODE_FIRMWARE_TX) {
		FUNC0(buf, tx_fw_stat_gstrings, UEC_TX_FW_STATS_LEN *
			       	ETH_GSTRING_LEN);
		buf += UEC_TX_FW_STATS_LEN * ETH_GSTRING_LEN;
	}
	if (stats_mode & UCC_GETH_STATISTICS_GATHERING_MODE_FIRMWARE_RX)
		FUNC0(buf, rx_fw_stat_gstrings, UEC_RX_FW_STATS_LEN *
			       	ETH_GSTRING_LEN);
}