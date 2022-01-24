#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct net_device {int dummy; } ;
struct fjes_hw {int max_epid; int my_epid; } ;
struct fjes_adapter {struct fjes_hw hw; } ;
struct TYPE_3__ {int /*<<< orphan*/  stat_string; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  ETH_GSTRING_LEN ; 
#define  ETH_SS_STATS 128 
 TYPE_1__* fjes_gstrings_stats ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fjes_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static void FUNC4(struct net_device *netdev,
			     u32 stringset, u8 *data)
{
	struct fjes_adapter *adapter = FUNC2(netdev);
	struct fjes_hw *hw = &adapter->hw;
	u8 *p = data;
	int i;

	switch (stringset) {
	case ETH_SS_STATS:
		for (i = 0; i < FUNC0(fjes_gstrings_stats); i++) {
			FUNC1(p, fjes_gstrings_stats[i].stat_string,
			       ETH_GSTRING_LEN);
			p += ETH_GSTRING_LEN;
		}
		for (i = 0; i < hw->max_epid; i++) {
			if (i == hw->my_epid)
				continue;
			FUNC3(p, "ep%u_com_regist_buf_exec", i);
			p += ETH_GSTRING_LEN;
			FUNC3(p, "ep%u_com_unregist_buf_exec", i);
			p += ETH_GSTRING_LEN;
			FUNC3(p, "ep%u_send_intr_rx", i);
			p += ETH_GSTRING_LEN;
			FUNC3(p, "ep%u_send_intr_unshare", i);
			p += ETH_GSTRING_LEN;
			FUNC3(p, "ep%u_send_intr_zoneupdate", i);
			p += ETH_GSTRING_LEN;
			FUNC3(p, "ep%u_recv_intr_rx", i);
			p += ETH_GSTRING_LEN;
			FUNC3(p, "ep%u_recv_intr_unshare", i);
			p += ETH_GSTRING_LEN;
			FUNC3(p, "ep%u_recv_intr_stop", i);
			p += ETH_GSTRING_LEN;
			FUNC3(p, "ep%u_recv_intr_zoneupdate", i);
			p += ETH_GSTRING_LEN;
			FUNC3(p, "ep%u_tx_buffer_full", i);
			p += ETH_GSTRING_LEN;
			FUNC3(p, "ep%u_tx_dropped_not_shared", i);
			p += ETH_GSTRING_LEN;
			FUNC3(p, "ep%u_tx_dropped_ver_mismatch", i);
			p += ETH_GSTRING_LEN;
			FUNC3(p, "ep%u_tx_dropped_buf_size_mismatch", i);
			p += ETH_GSTRING_LEN;
			FUNC3(p, "ep%u_tx_dropped_vlanid_mismatch", i);
			p += ETH_GSTRING_LEN;
		}
		break;
	}
}