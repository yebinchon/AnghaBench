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
typedef  int /*<<< orphan*/  u16 ;
struct ice_eth_stats {int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_broadcast; int /*<<< orphan*/  tx_multicast; int /*<<< orphan*/  tx_unicast; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  rx_discards; int /*<<< orphan*/  rx_broadcast; int /*<<< orphan*/  rx_multicast; int /*<<< orphan*/  rx_unicast; int /*<<< orphan*/  rx_bytes; } ;
struct ice_vsi {int stat_offsets_loaded; struct ice_eth_stats eth_stats; struct ice_eth_stats eth_stats_prev; int /*<<< orphan*/  vsi_num; TYPE_1__* back; } ;
struct ice_hw {int dummy; } ;
struct TYPE_2__ {struct ice_hw hw; } ;

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
 int /*<<< orphan*/  FUNC10 (struct ice_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct ice_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC12(struct ice_vsi *vsi)
{
	struct ice_eth_stats *prev_es, *cur_es;
	struct ice_hw *hw = &vsi->back->hw;
	u16 vsi_num = vsi->vsi_num;    /* HW absolute index of a VSI */

	prev_es = &vsi->eth_stats_prev;
	cur_es = &vsi->eth_stats;

	FUNC11(hw, FUNC2(vsi_num), vsi->stat_offsets_loaded,
			  &prev_es->rx_bytes, &cur_es->rx_bytes);

	FUNC11(hw, FUNC8(vsi_num), vsi->stat_offsets_loaded,
			  &prev_es->rx_unicast, &cur_es->rx_unicast);

	FUNC11(hw, FUNC4(vsi_num), vsi->stat_offsets_loaded,
			  &prev_es->rx_multicast, &cur_es->rx_multicast);

	FUNC11(hw, FUNC0(vsi_num), vsi->stat_offsets_loaded,
			  &prev_es->rx_broadcast, &cur_es->rx_broadcast);

	FUNC10(hw, FUNC6(vsi_num), vsi->stat_offsets_loaded,
			  &prev_es->rx_discards, &cur_es->rx_discards);

	FUNC11(hw, FUNC3(vsi_num), vsi->stat_offsets_loaded,
			  &prev_es->tx_bytes, &cur_es->tx_bytes);

	FUNC11(hw, FUNC9(vsi_num), vsi->stat_offsets_loaded,
			  &prev_es->tx_unicast, &cur_es->tx_unicast);

	FUNC11(hw, FUNC5(vsi_num), vsi->stat_offsets_loaded,
			  &prev_es->tx_multicast, &cur_es->tx_multicast);

	FUNC11(hw, FUNC1(vsi_num), vsi->stat_offsets_loaded,
			  &prev_es->tx_broadcast, &cur_es->tx_broadcast);

	FUNC10(hw, FUNC7(vsi_num), vsi->stat_offsets_loaded,
			  &prev_es->tx_errors, &cur_es->tx_errors);

	vsi->stat_offsets_loaded = true;
}