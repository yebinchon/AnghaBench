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
struct iwl_mvm {int dummy; } ;
struct iwl_mac_power_cmd {int flags; int keep_alive_seconds; int /*<<< orphan*/  uapsd_max_sp; int /*<<< orphan*/  uapsd_ac_flags; int /*<<< orphan*/  qndp_tid; int /*<<< orphan*/  tx_data_timeout_uapsd; int /*<<< orphan*/  rx_data_timeout_uapsd; int /*<<< orphan*/  lprx_rssi_threshold; int /*<<< orphan*/  skip_dtim_periods; int /*<<< orphan*/  tx_data_timeout; int /*<<< orphan*/  rx_data_timeout; int /*<<< orphan*/  id_and_color; } ;
struct TYPE_2__ {int /*<<< orphan*/  power_scheme; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,...) ; 
 int /*<<< orphan*/  POWER_FLAGS_ADVANCE_PM_ENA_MSK ; 
 int /*<<< orphan*/  POWER_FLAGS_LPRX_ENA_MSK ; 
 int /*<<< orphan*/  POWER_FLAGS_POWER_MANAGEMENT_ENA_MSK ; 
 int /*<<< orphan*/  POWER_FLAGS_SKIP_OVER_DTIM_MSK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ iwlmvm_mod_params ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct iwl_mvm *mvm,
			      struct iwl_mac_power_cmd *cmd)
{
	FUNC0(mvm,
			"Sending power table command on mac id 0x%X for power level %d, flags = 0x%X\n",
			cmd->id_and_color, iwlmvm_mod_params.power_scheme,
			FUNC2(cmd->flags));
	FUNC0(mvm, "Keep alive = %u sec\n",
			FUNC2(cmd->keep_alive_seconds));

	if (!(cmd->flags & FUNC1(POWER_FLAGS_POWER_MANAGEMENT_ENA_MSK))) {
		FUNC0(mvm, "Disable power management\n");
		return;
	}

	FUNC0(mvm, "Rx timeout = %u usec\n",
			FUNC3(cmd->rx_data_timeout));
	FUNC0(mvm, "Tx timeout = %u usec\n",
			FUNC3(cmd->tx_data_timeout));
	if (cmd->flags & FUNC1(POWER_FLAGS_SKIP_OVER_DTIM_MSK))
		FUNC0(mvm, "DTIM periods to skip = %u\n",
				cmd->skip_dtim_periods);
	if (cmd->flags & FUNC1(POWER_FLAGS_LPRX_ENA_MSK))
		FUNC0(mvm, "LP RX RSSI threshold = %u\n",
				cmd->lprx_rssi_threshold);
	if (cmd->flags & FUNC1(POWER_FLAGS_ADVANCE_PM_ENA_MSK)) {
		FUNC0(mvm, "uAPSD enabled\n");
		FUNC0(mvm, "Rx timeout (uAPSD) = %u usec\n",
				FUNC3(cmd->rx_data_timeout_uapsd));
		FUNC0(mvm, "Tx timeout (uAPSD) = %u usec\n",
				FUNC3(cmd->tx_data_timeout_uapsd));
		FUNC0(mvm, "QNDP TID = %d\n", cmd->qndp_tid);
		FUNC0(mvm, "ACs flags = 0x%x\n", cmd->uapsd_ac_flags);
		FUNC0(mvm, "Max SP = %d\n", cmd->uapsd_max_sp);
	}
}