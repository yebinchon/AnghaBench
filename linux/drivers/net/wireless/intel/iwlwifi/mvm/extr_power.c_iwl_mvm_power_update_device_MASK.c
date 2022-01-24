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
struct TYPE_3__ {scalar_t__ cur_fw_img; } ;
struct iwl_mvm {int ps_disabled; scalar_t__ ext_clock_valid; scalar_t__ disable_power_off; scalar_t__ disable_power_off_d3; TYPE_1__ fwrt; } ;
struct iwl_device_power_cmd {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_4__ {scalar_t__ power_scheme; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_POWER_FLAGS_32K_CLK_VALID_MSK ; 
 int /*<<< orphan*/  DEVICE_POWER_FLAGS_POWER_SAVE_ENA_MSK ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ IWL_POWER_SCHEME_CAM ; 
 scalar_t__ IWL_UCODE_WOWLAN ; 
 int /*<<< orphan*/  POWER_TABLE_CMD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwl_device_power_cmd*) ; 
 TYPE_2__ iwlmvm_mod_params ; 

int FUNC3(struct iwl_mvm *mvm)
{
	struct iwl_device_power_cmd cmd = {
		.flags = 0,
	};

	if (iwlmvm_mod_params.power_scheme == IWL_POWER_SCHEME_CAM)
		mvm->ps_disabled = true;

	if (!mvm->ps_disabled)
		cmd.flags |= FUNC1(DEVICE_POWER_FLAGS_POWER_SAVE_ENA_MSK);

#ifdef CONFIG_IWLWIFI_DEBUGFS
	if ((mvm->fwrt.cur_fw_img == IWL_UCODE_WOWLAN) ?
			mvm->disable_power_off_d3 : mvm->disable_power_off)
		cmd.flags &=
			cpu_to_le16(~DEVICE_POWER_FLAGS_POWER_SAVE_ENA_MSK);
#endif
	if (mvm->ext_clock_valid)
		cmd.flags |= FUNC1(DEVICE_POWER_FLAGS_32K_CLK_VALID_MSK);

	FUNC0(mvm,
			"Sending device power command with flags = 0x%X\n",
			cmd.flags);

	return FUNC2(mvm, POWER_TABLE_CMD, 0, sizeof(cmd),
				    &cmd);
}