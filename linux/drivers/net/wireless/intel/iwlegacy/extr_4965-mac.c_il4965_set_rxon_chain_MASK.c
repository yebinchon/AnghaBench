#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_6__ {int /*<<< orphan*/  rx_chain; } ;
struct TYPE_5__ {int valid_rx_ant; } ;
struct TYPE_4__ {int active_chains; } ;
struct il_priv {TYPE_3__ staging; TYPE_2__ hw_params; TYPE_1__ chain_noise_data; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int) ; 
 int IL_NUM_RX_CHAINS_SINGLE ; 
 int RXON_RX_CHAIN_CNT_POS ; 
 int RXON_RX_CHAIN_MIMO_CNT_POS ; 
 int /*<<< orphan*/  RXON_RX_CHAIN_MIMO_FORCE_MSK ; 
 int RXON_RX_CHAIN_VALID_POS ; 
 int /*<<< orphan*/  S_POWER_PMI ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (struct il_priv*) ; 
 int FUNC5 (struct il_priv*,int) ; 
 int FUNC6 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC8(struct il_priv *il)
{
	bool is_single = FUNC6(il);
	bool is_cam = !FUNC7(S_POWER_PMI, &il->status);
	u8 idle_rx_cnt, active_rx_cnt, valid_rx_cnt;
	u32 active_chains;
	u16 rx_chain;

	/* Tell uCode which antennas are actually connected.
	 * Before first association, we assume all antennas are connected.
	 * Just after first association, il4965_chain_noise_calibration()
	 *    checks which antennas actually *are* connected. */
	if (il->chain_noise_data.active_chains)
		active_chains = il->chain_noise_data.active_chains;
	else
		active_chains = il->hw_params.valid_rx_ant;

	rx_chain = active_chains << RXON_RX_CHAIN_VALID_POS;

	/* How many receivers should we use? */
	active_rx_cnt = FUNC4(il);
	idle_rx_cnt = FUNC5(il, active_rx_cnt);

	/* correct rx chain count according hw settings
	 * and chain noise calibration
	 */
	valid_rx_cnt = FUNC3(active_chains);
	if (valid_rx_cnt < active_rx_cnt)
		active_rx_cnt = valid_rx_cnt;

	if (valid_rx_cnt < idle_rx_cnt)
		idle_rx_cnt = valid_rx_cnt;

	rx_chain |= active_rx_cnt << RXON_RX_CHAIN_MIMO_CNT_POS;
	rx_chain |= idle_rx_cnt << RXON_RX_CHAIN_CNT_POS;

	il->staging.rx_chain = FUNC2(rx_chain);

	if (!is_single && active_rx_cnt >= IL_NUM_RX_CHAINS_SINGLE && is_cam)
		il->staging.rx_chain |= RXON_RX_CHAIN_MIMO_FORCE_MSK;
	else
		il->staging.rx_chain &= ~RXON_RX_CHAIN_MIMO_FORCE_MSK;

	FUNC0("rx_chain=0x%X active=%d idle=%d\n", il->staging.rx_chain,
		active_rx_cnt, idle_rx_cnt);

	FUNC1(active_rx_cnt == 0 || idle_rx_cnt == 0 ||
		active_rx_cnt < idle_rx_cnt);
}