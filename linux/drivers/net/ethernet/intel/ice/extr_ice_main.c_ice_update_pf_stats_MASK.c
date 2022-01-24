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
struct TYPE_4__ {int /*<<< orphan*/  tx_broadcast; int /*<<< orphan*/  tx_multicast; int /*<<< orphan*/  tx_unicast; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  rx_discards; int /*<<< orphan*/  rx_broadcast; int /*<<< orphan*/  rx_multicast; int /*<<< orphan*/  rx_unicast; int /*<<< orphan*/  rx_bytes; } ;
struct ice_hw_port_stats {int /*<<< orphan*/  rx_jabber; int /*<<< orphan*/  rx_oversize; int /*<<< orphan*/  rx_fragments; int /*<<< orphan*/  rx_undersize; int /*<<< orphan*/  rx_len_errors; int /*<<< orphan*/  mac_remote_faults; int /*<<< orphan*/  mac_local_faults; int /*<<< orphan*/  illegal_bytes; int /*<<< orphan*/  crc_errors; int /*<<< orphan*/  link_xoff_tx; int /*<<< orphan*/  link_xon_tx; int /*<<< orphan*/  link_xoff_rx; int /*<<< orphan*/  link_xon_rx; int /*<<< orphan*/  tx_size_big; int /*<<< orphan*/  tx_size_1522; int /*<<< orphan*/  tx_size_1023; int /*<<< orphan*/  tx_size_511; int /*<<< orphan*/  tx_size_255; int /*<<< orphan*/  tx_size_127; int /*<<< orphan*/  tx_size_64; int /*<<< orphan*/  rx_size_big; int /*<<< orphan*/  rx_size_1522; int /*<<< orphan*/  rx_size_1023; int /*<<< orphan*/  rx_size_511; int /*<<< orphan*/  rx_size_255; int /*<<< orphan*/  rx_size_127; int /*<<< orphan*/  rx_size_64; int /*<<< orphan*/  tx_dropped_link_down; TYPE_2__ eth; } ;
struct ice_hw {TYPE_1__* port_info; } ;
struct ice_pf {int stat_prev_loaded; struct ice_hw_port_stats stats; struct ice_hw_port_stats stats_prev; struct ice_hw hw; } ;
struct TYPE_3__ {int /*<<< orphan*/  lport; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRTRPB_RDPC ; 
 int /*<<< orphan*/  FUNC36 (struct ice_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC37 (struct ice_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC38 (struct ice_pf*) ; 

void FUNC39(struct ice_pf *pf)
{
	struct ice_hw_port_stats *prev_ps, *cur_ps;
	struct ice_hw *hw = &pf->hw;
	u8 port;

	port = hw->port_info->lport;
	prev_ps = &pf->stats_prev;
	cur_ps = &pf->stats;

	FUNC37(hw, FUNC3(port), pf->stat_prev_loaded,
			  &prev_ps->eth.rx_bytes,
			  &cur_ps->eth.rx_bytes);

	FUNC37(hw, FUNC34(port), pf->stat_prev_loaded,
			  &prev_ps->eth.rx_unicast,
			  &cur_ps->eth.rx_unicast);

	FUNC37(hw, FUNC11(port), pf->stat_prev_loaded,
			  &prev_ps->eth.rx_multicast,
			  &cur_ps->eth.rx_multicast);

	FUNC37(hw, FUNC0(port), pf->stat_prev_loaded,
			  &prev_ps->eth.rx_broadcast,
			  &cur_ps->eth.rx_broadcast);

	FUNC36(hw, PRTRPB_RDPC, pf->stat_prev_loaded,
			  &prev_ps->eth.rx_discards,
			  &cur_ps->eth.rx_discards);

	FUNC37(hw, FUNC4(port), pf->stat_prev_loaded,
			  &prev_ps->eth.tx_bytes,
			  &cur_ps->eth.tx_bytes);

	FUNC37(hw, FUNC35(port), pf->stat_prev_loaded,
			  &prev_ps->eth.tx_unicast,
			  &cur_ps->eth.tx_unicast);

	FUNC37(hw, FUNC12(port), pf->stat_prev_loaded,
			  &prev_ps->eth.tx_multicast,
			  &cur_ps->eth.tx_multicast);

	FUNC37(hw, FUNC1(port), pf->stat_prev_loaded,
			  &prev_ps->eth.tx_broadcast,
			  &cur_ps->eth.tx_broadcast);

	FUNC36(hw, FUNC33(port), pf->stat_prev_loaded,
			  &prev_ps->tx_dropped_link_down,
			  &cur_ps->tx_dropped_link_down);

	FUNC37(hw, FUNC19(port), pf->stat_prev_loaded,
			  &prev_ps->rx_size_64, &cur_ps->rx_size_64);

	FUNC37(hw, FUNC15(port), pf->stat_prev_loaded,
			  &prev_ps->rx_size_127, &cur_ps->rx_size_127);

	FUNC37(hw, FUNC17(port), pf->stat_prev_loaded,
			  &prev_ps->rx_size_255, &cur_ps->rx_size_255);

	FUNC37(hw, FUNC18(port), pf->stat_prev_loaded,
			  &prev_ps->rx_size_511, &cur_ps->rx_size_511);

	FUNC37(hw, FUNC14(port), pf->stat_prev_loaded,
			  &prev_ps->rx_size_1023, &cur_ps->rx_size_1023);

	FUNC37(hw, FUNC16(port), pf->stat_prev_loaded,
			  &prev_ps->rx_size_1522, &cur_ps->rx_size_1522);

	FUNC37(hw, FUNC20(port), pf->stat_prev_loaded,
			  &prev_ps->rx_size_big, &cur_ps->rx_size_big);

	FUNC37(hw, FUNC26(port), pf->stat_prev_loaded,
			  &prev_ps->tx_size_64, &cur_ps->tx_size_64);

	FUNC37(hw, FUNC22(port), pf->stat_prev_loaded,
			  &prev_ps->tx_size_127, &cur_ps->tx_size_127);

	FUNC37(hw, FUNC24(port), pf->stat_prev_loaded,
			  &prev_ps->tx_size_255, &cur_ps->tx_size_255);

	FUNC37(hw, FUNC25(port), pf->stat_prev_loaded,
			  &prev_ps->tx_size_511, &cur_ps->tx_size_511);

	FUNC37(hw, FUNC21(port), pf->stat_prev_loaded,
			  &prev_ps->tx_size_1023, &cur_ps->tx_size_1023);

	FUNC37(hw, FUNC23(port), pf->stat_prev_loaded,
			  &prev_ps->tx_size_1522, &cur_ps->tx_size_1522);

	FUNC37(hw, FUNC27(port), pf->stat_prev_loaded,
			  &prev_ps->tx_size_big, &cur_ps->tx_size_big);

	FUNC36(hw, FUNC8(port), pf->stat_prev_loaded,
			  &prev_ps->link_xon_rx, &cur_ps->link_xon_rx);

	FUNC36(hw, FUNC6(port), pf->stat_prev_loaded,
			  &prev_ps->link_xoff_rx, &cur_ps->link_xoff_rx);

	FUNC36(hw, FUNC9(port), pf->stat_prev_loaded,
			  &prev_ps->link_xon_tx, &cur_ps->link_xon_tx);

	FUNC36(hw, FUNC7(port), pf->stat_prev_loaded,
			  &prev_ps->link_xoff_tx, &cur_ps->link_xoff_tx);

	FUNC38(pf);

	FUNC36(hw, FUNC2(port), pf->stat_prev_loaded,
			  &prev_ps->crc_errors, &cur_ps->crc_errors);

	FUNC36(hw, FUNC5(port), pf->stat_prev_loaded,
			  &prev_ps->illegal_bytes, &cur_ps->illegal_bytes);

	FUNC36(hw, FUNC10(port), pf->stat_prev_loaded,
			  &prev_ps->mac_local_faults,
			  &cur_ps->mac_local_faults);

	FUNC36(hw, FUNC13(port), pf->stat_prev_loaded,
			  &prev_ps->mac_remote_faults,
			  &cur_ps->mac_remote_faults);

	FUNC36(hw, FUNC30(port), pf->stat_prev_loaded,
			  &prev_ps->rx_len_errors, &cur_ps->rx_len_errors);

	FUNC36(hw, FUNC32(port), pf->stat_prev_loaded,
			  &prev_ps->rx_undersize, &cur_ps->rx_undersize);

	FUNC36(hw, FUNC28(port), pf->stat_prev_loaded,
			  &prev_ps->rx_fragments, &cur_ps->rx_fragments);

	FUNC36(hw, FUNC31(port), pf->stat_prev_loaded,
			  &prev_ps->rx_oversize, &cur_ps->rx_oversize);

	FUNC36(hw, FUNC29(port), pf->stat_prev_loaded,
			  &prev_ps->rx_jabber, &cur_ps->rx_jabber);

	pf->stat_prev_loaded = true;
}