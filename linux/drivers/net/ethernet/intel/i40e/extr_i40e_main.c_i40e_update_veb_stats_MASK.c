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
struct i40e_veb_tc_stats {int /*<<< orphan*/ * tc_tx_bytes; int /*<<< orphan*/ * tc_tx_packets; int /*<<< orphan*/ * tc_rx_bytes; int /*<<< orphan*/ * tc_rx_packets; } ;
struct i40e_eth_stats {int /*<<< orphan*/  tx_broadcast; int /*<<< orphan*/  tx_multicast; int /*<<< orphan*/  tx_unicast; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  rx_broadcast; int /*<<< orphan*/  rx_multicast; int /*<<< orphan*/  rx_unicast; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_unknown_protocol; int /*<<< orphan*/  tx_discards; } ;
struct i40e_veb {int stats_idx; int stat_offsets_loaded; struct i40e_veb_tc_stats tc_stats_offsets; struct i40e_veb_tc_stats tc_stats; struct i40e_eth_stats stats_offsets; struct i40e_eth_stats stats; struct i40e_pf* pf; } ;
struct i40e_hw {scalar_t__ revision_id; } ;
struct i40e_pf {struct i40e_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int,int) ; 
 int /*<<< orphan*/  FUNC19 (int,int) ; 
 int /*<<< orphan*/  FUNC20 (int,int) ; 
 int /*<<< orphan*/  FUNC21 (int,int) ; 
 int /*<<< orphan*/  FUNC22 (int,int) ; 
 int /*<<< orphan*/  FUNC23 (int,int) ; 
 int /*<<< orphan*/  FUNC24 (int,int) ; 
 int /*<<< orphan*/  FUNC25 (int,int) ; 
 int I40E_MAX_TRAFFIC_CLASS ; 
 int /*<<< orphan*/  FUNC26 (struct i40e_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC28(struct i40e_veb *veb)
{
	struct i40e_pf *pf = veb->pf;
	struct i40e_hw *hw = &pf->hw;
	struct i40e_eth_stats *oes;
	struct i40e_eth_stats *es;     /* device's eth stats */
	struct i40e_veb_tc_stats *veb_oes;
	struct i40e_veb_tc_stats *veb_es;
	int i, idx = 0;

	idx = veb->stats_idx;
	es = &veb->stats;
	oes = &veb->stats_offsets;
	veb_es = &veb->tc_stats;
	veb_oes = &veb->tc_stats_offsets;

	/* Gather up the stats that the hw collects */
	FUNC26(hw, FUNC13(idx),
			   veb->stat_offsets_loaded,
			   &oes->tx_discards, &es->tx_discards);
	if (hw->revision_id > 0)
		FUNC26(hw, FUNC12(idx),
				   veb->stat_offsets_loaded,
				   &oes->rx_unknown_protocol,
				   &es->rx_unknown_protocol);
	FUNC27(hw, FUNC4(idx), FUNC5(idx),
			   veb->stat_offsets_loaded,
			   &oes->rx_bytes, &es->rx_bytes);
	FUNC27(hw, FUNC14(idx), FUNC15(idx),
			   veb->stat_offsets_loaded,
			   &oes->rx_unicast, &es->rx_unicast);
	FUNC27(hw, FUNC8(idx), FUNC9(idx),
			   veb->stat_offsets_loaded,
			   &oes->rx_multicast, &es->rx_multicast);
	FUNC27(hw, FUNC0(idx), FUNC1(idx),
			   veb->stat_offsets_loaded,
			   &oes->rx_broadcast, &es->rx_broadcast);

	FUNC27(hw, FUNC6(idx), FUNC7(idx),
			   veb->stat_offsets_loaded,
			   &oes->tx_bytes, &es->tx_bytes);
	FUNC27(hw, FUNC16(idx), FUNC17(idx),
			   veb->stat_offsets_loaded,
			   &oes->tx_unicast, &es->tx_unicast);
	FUNC27(hw, FUNC10(idx), FUNC11(idx),
			   veb->stat_offsets_loaded,
			   &oes->tx_multicast, &es->tx_multicast);
	FUNC27(hw, FUNC2(idx), FUNC3(idx),
			   veb->stat_offsets_loaded,
			   &oes->tx_broadcast, &es->tx_broadcast);
	for (i = 0; i < I40E_MAX_TRAFFIC_CLASS; i++) {
		FUNC27(hw, FUNC20(i, idx),
				   FUNC21(i, idx),
				   veb->stat_offsets_loaded,
				   &veb_oes->tc_rx_packets[i],
				   &veb_es->tc_rx_packets[i]);
		FUNC27(hw, FUNC18(i, idx),
				   FUNC19(i, idx),
				   veb->stat_offsets_loaded,
				   &veb_oes->tc_rx_bytes[i],
				   &veb_es->tc_rx_bytes[i]);
		FUNC27(hw, FUNC24(i, idx),
				   FUNC25(i, idx),
				   veb->stat_offsets_loaded,
				   &veb_oes->tc_tx_packets[i],
				   &veb_es->tc_tx_packets[i]);
		FUNC27(hw, FUNC22(i, idx),
				   FUNC23(i, idx),
				   veb->stat_offsets_loaded,
				   &veb_oes->tc_tx_bytes[i],
				   &veb_es->tc_tx_bytes[i]);
	}
	veb->stat_offsets_loaded = true;
}